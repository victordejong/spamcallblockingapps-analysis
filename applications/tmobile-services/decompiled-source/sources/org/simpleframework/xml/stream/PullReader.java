package org.simpleframework.xml.stream;

import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/stream/PullReader.class */
class PullReader implements EventReader {
    private XmlPullParser parser;
    private EventNode peek;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/stream/PullReader$End.class */
    public static class End extends EventToken {
        private End() {
        }

        @Override // org.simpleframework.xml.stream.EventToken, org.simpleframework.xml.stream.EventNode
        public boolean isEnd() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/stream/PullReader$Entry.class */
    public static class Entry extends EventAttribute {
        private final String name;
        private final String prefix;
        private final String reference;
        private final XmlPullParser source;
        private final String value;

        public Entry(XmlPullParser xmlPullParser, int i) {
            this.reference = xmlPullParser.getAttributeNamespace(i);
            this.prefix = xmlPullParser.getAttributePrefix(i);
            this.value = xmlPullParser.getAttributeValue(i);
            this.name = xmlPullParser.getAttributeName(i);
            this.source = xmlPullParser;
        }

        @Override // org.simpleframework.xml.stream.Attribute
        public String getName() {
            return this.name;
        }

        @Override // org.simpleframework.xml.stream.EventAttribute, org.simpleframework.xml.stream.Attribute
        public String getPrefix() {
            return this.prefix;
        }

        @Override // org.simpleframework.xml.stream.EventAttribute, org.simpleframework.xml.stream.Attribute
        public String getReference() {
            return this.reference;
        }

        @Override // org.simpleframework.xml.stream.EventAttribute, org.simpleframework.xml.stream.Attribute
        public Object getSource() {
            return this.source;
        }

        @Override // org.simpleframework.xml.stream.Attribute
        public String getValue() {
            return this.value;
        }

        @Override // org.simpleframework.xml.stream.EventAttribute, org.simpleframework.xml.stream.Attribute
        public boolean isReserved() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/stream/PullReader$Start.class */
    public static class Start extends EventElement {
        private final int line;
        private final String name;
        private final String prefix;
        private final String reference;
        private final XmlPullParser source;

        public Start(XmlPullParser xmlPullParser) {
            this.reference = xmlPullParser.getNamespace();
            this.line = xmlPullParser.getLineNumber();
            this.prefix = xmlPullParser.getPrefix();
            this.name = xmlPullParser.getName();
            this.source = xmlPullParser;
        }

        @Override // org.simpleframework.xml.stream.EventElement, org.simpleframework.xml.stream.EventNode
        public int getLine() {
            return this.line;
        }

        @Override // org.simpleframework.xml.stream.EventNode
        public String getName() {
            return this.name;
        }

        @Override // org.simpleframework.xml.stream.EventNode
        public String getPrefix() {
            return this.prefix;
        }

        @Override // org.simpleframework.xml.stream.EventNode
        public String getReference() {
            return this.reference;
        }

        @Override // org.simpleframework.xml.stream.EventNode
        public Object getSource() {
            return this.source;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/stream/PullReader$Text.class */
    public static class Text extends EventToken {
        private final XmlPullParser source;
        private final String text;

        public Text(XmlPullParser xmlPullParser) {
            this.text = xmlPullParser.getText();
            this.source = xmlPullParser;
        }

        @Override // org.simpleframework.xml.stream.EventToken, org.simpleframework.xml.stream.EventNode
        public Object getSource() {
            return this.source;
        }

        @Override // org.simpleframework.xml.stream.EventToken, org.simpleframework.xml.stream.EventNode
        public String getValue() {
            return this.text;
        }

        @Override // org.simpleframework.xml.stream.EventToken, org.simpleframework.xml.stream.EventNode
        public boolean isText() {
            return true;
        }
    }

    public PullReader(XmlPullParser xmlPullParser) {
        this.parser = xmlPullParser;
    }

    private Entry attribute(int i) throws Exception {
        return new Entry(this.parser, i);
    }

    private Start build(Start start) throws Exception {
        int attributeCount = this.parser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            Entry attribute = attribute(i);
            if (!attribute.isReserved()) {
                start.add(attribute);
            }
        }
        return start;
    }

    private End end() throws Exception {
        return new End();
    }

    private EventNode read() throws Exception {
        int next = this.parser.next();
        if (next != 1) {
            return next == 2 ? start() : next == 4 ? text() : next == 3 ? end() : read();
        }
        return null;
    }

    private Start start() throws Exception {
        Start start = new Start(this.parser);
        Start start2 = start;
        if (start.isEmpty()) {
            start2 = build(start);
        }
        return start2;
    }

    private Text text() throws Exception {
        return new Text(this.parser);
    }

    @Override // org.simpleframework.xml.stream.EventReader
    public EventNode next() throws Exception {
        EventNode eventNode = this.peek;
        if (eventNode == null) {
            eventNode = read();
        } else {
            this.peek = null;
        }
        return eventNode;
    }

    @Override // org.simpleframework.xml.stream.EventReader
    public EventNode peek() throws Exception {
        if (this.peek == null) {
            this.peek = next();
        }
        return this.peek;
    }
}
