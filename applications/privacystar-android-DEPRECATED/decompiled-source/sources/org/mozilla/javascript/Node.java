package org.mozilla.javascript;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.mozilla.javascript.ast.Comment;
import org.mozilla.javascript.ast.Jump;
import org.mozilla.javascript.ast.Name;
import org.mozilla.javascript.ast.NumberLiteral;
import org.mozilla.javascript.ast.Scope;
import org.mozilla.javascript.ast.ScriptNode;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/Node.class */
public class Node implements Iterable<Node> {
    public static final int ATTRIBUTE_FLAG = 2;
    public static final int BOTH = 0;
    public static final int CASEARRAY_PROP = 5;
    public static final int CATCH_SCOPE_PROP = 14;
    public static final int CONTROL_BLOCK_PROP = 18;
    public static final int DECR_FLAG = 1;
    public static final int DESCENDANTS_FLAG = 4;
    public static final int DESTRUCTURING_ARRAY_LENGTH = 21;
    public static final int DESTRUCTURING_NAMES = 22;
    public static final int DESTRUCTURING_PARAMS = 23;
    public static final int DESTRUCTURING_SHORTHAND = 26;
    public static final int DIRECTCALL_PROP = 9;
    public static final int END_DROPS_OFF = 1;
    public static final int END_RETURNS = 2;
    public static final int END_RETURNS_VALUE = 4;
    public static final int END_UNREACHED = 0;
    public static final int END_YIELDS = 8;
    public static final int EXPRESSION_CLOSURE_PROP = 25;
    public static final int FUNCTION_PROP = 1;
    public static final int GENERATOR_END_PROP = 20;
    public static final int INCRDECR_PROP = 13;
    public static final int ISNUMBER_PROP = 8;
    public static final int JSDOC_PROP = 24;
    public static final int LABEL_ID_PROP = 15;
    public static final int LAST_PROP = 26;
    public static final int LEFT = 1;
    public static final int LOCAL_BLOCK_PROP = 3;
    public static final int LOCAL_PROP = 2;
    public static final int MEMBER_TYPE_PROP = 16;
    public static final int NAME_PROP = 17;
    public static final int NON_SPECIALCALL = 0;
    private static final Node NOT_SET = new Node(-1);
    public static final int OBJECT_IDS_PROP = 12;
    public static final int PARENTHESIZED_PROP = 19;
    public static final int POST_FLAG = 2;
    public static final int PROPERTY_FLAG = 1;
    public static final int REGEXP_PROP = 4;
    public static final int RIGHT = 2;
    public static final int SKIP_INDEXES_PROP = 11;
    public static final int SPECIALCALL_EVAL = 1;
    public static final int SPECIALCALL_PROP = 10;
    public static final int SPECIALCALL_WITH = 2;
    public static final int TARGETBLOCK_PROP = 6;
    public static final int VARIABLE_PROP = 7;
    protected Node first;
    protected Node last;
    protected int lineno;
    protected Node next;
    protected PropListItem propListHead;
    protected int type;

    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/Node$NodeIterator.class */
    public class NodeIterator implements Iterator<Node> {
        private Node cursor;
        private Node prev2;
        private Node prev = Node.NOT_SET;
        private boolean removed = false;

        public NodeIterator() {
            this.cursor = Node.this.first;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.cursor != null;
        }

        @Override // java.util.Iterator
        public Node next() {
            if (this.cursor == null) {
                throw new NoSuchElementException();
            }
            this.removed = false;
            this.prev2 = this.prev;
            this.prev = this.cursor;
            this.cursor = this.cursor.next;
            return this.prev;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.prev == Node.NOT_SET) {
                throw new IllegalStateException("next() has not been called");
            } else if (this.removed) {
                throw new IllegalStateException("remove() already called for current element");
            } else if (this.prev == Node.this.first) {
                Node.this.first = this.prev.next;
            } else if (this.prev == Node.this.last) {
                this.prev2.next = null;
                Node.this.last = this.prev2;
            } else {
                this.prev2.next = this.cursor;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/Node$PropListItem.class */
    public static class PropListItem {
        int intValue;
        PropListItem next;
        Object objectValue;
        int type;

        private PropListItem() {
        }
    }

    public Node(int i) {
        this.type = -1;
        this.lineno = -1;
        this.type = i;
    }

    public Node(int i, int i2) {
        this.type = -1;
        this.lineno = -1;
        this.type = i;
        this.lineno = i2;
    }

    public Node(int i, Node node) {
        this.type = -1;
        this.lineno = -1;
        this.type = i;
        this.last = node;
        this.first = node;
        node.next = null;
    }

    public Node(int i, Node node, int i2) {
        this(i, node);
        this.lineno = i2;
    }

    public Node(int i, Node node, Node node2) {
        this.type = -1;
        this.lineno = -1;
        this.type = i;
        this.first = node;
        this.last = node2;
        node.next = node2;
        node2.next = null;
    }

    public Node(int i, Node node, Node node2, int i2) {
        this(i, node, node2);
        this.lineno = i2;
    }

    public Node(int i, Node node, Node node2, Node node3) {
        this.type = -1;
        this.lineno = -1;
        this.type = i;
        this.first = node;
        this.last = node3;
        node.next = node2;
        node2.next = node3;
        node3.next = null;
    }

    public Node(int i, Node node, Node node2, Node node3, int i2) {
        this(i, node, node2, node3);
        this.lineno = i2;
    }

    private static void appendPrintId(Node node, ObjToIntMap objToIntMap, StringBuilder sb) {
    }

    private int endCheck() {
        int i = this.type;
        if (i == 4) {
            return this.first != null ? 4 : 2;
        }
        if (i == 50) {
            return 0;
        }
        if (i == 72) {
            return 8;
        }
        if (i != 129 && i != 141) {
            switch (i) {
                case 120:
                    return endCheckBreak();
                case 121:
                    return 0;
                default:
                    switch (i) {
                        case 131:
                            if (this.next != null) {
                                return this.next.endCheck();
                            }
                            return 1;
                        case 132:
                            return endCheckLoop();
                        case 133:
                            if (this.first != null) {
                                return this.first.endCheck();
                            }
                            return 1;
                        default:
                            return 1;
                    }
            }
        } else if (this.first == null) {
            return 1;
        } else {
            int i2 = this.first.type;
            return i2 != 7 ? i2 != 81 ? i2 != 114 ? i2 != 130 ? endCheckBlock() : this.first.endCheckLabel() : this.first.endCheckSwitch() : this.first.endCheckTry() : this.first.endCheckIf();
        }
    }

    private int endCheckBlock() {
        int i = 1;
        for (Node node = this.first; (i & 1) != 0 && node != null; node = node.next) {
            i = (i & (-2)) | node.endCheck();
        }
        return i;
    }

    private int endCheckBreak() {
        ((Jump) this).getJumpStatement().putIntProp(18, 1);
        return 0;
    }

    private int endCheckIf() {
        Node node = this.next;
        Node node2 = ((Jump) this).target;
        int endCheck = node.endCheck();
        return node2 != null ? endCheck | node2.endCheck() : endCheck | 1;
    }

    private int endCheckLabel() {
        return this.next.endCheck() | getIntProp(18, 0);
    }

    private int endCheckLoop() {
        Node node = this.first;
        while (node.next != this.last) {
            node = node.next;
        }
        if (node.type != 6) {
            return 1;
        }
        int endCheck = ((Jump) node).target.next.endCheck();
        int i = endCheck;
        if (node.first.type == 45) {
            i = endCheck & (-2);
        }
        return getIntProp(18, 0) | i;
    }

    private int endCheckSwitch() {
        return 0;
    }

    private int endCheckTry() {
        return 0;
    }

    private PropListItem ensureProperty(int i) {
        PropListItem lookupProperty = lookupProperty(i);
        PropListItem propListItem = lookupProperty;
        if (lookupProperty == null) {
            propListItem = new PropListItem();
            propListItem.type = i;
            propListItem.next = this.propListHead;
            this.propListHead = propListItem;
        }
        return propListItem;
    }

    private static void generatePrintIds(Node node, ObjToIntMap objToIntMap) {
    }

    private PropListItem lookupProperty(int i) {
        PropListItem propListItem = this.propListHead;
        while (propListItem != null && i != propListItem.type) {
            propListItem = propListItem.next;
        }
        return propListItem;
    }

    public static Node newNumber(double d) {
        NumberLiteral numberLiteral = new NumberLiteral();
        numberLiteral.setNumber(d);
        return numberLiteral;
    }

    public static Node newString(int i, String str) {
        Name name = new Name();
        name.setIdentifier(str);
        name.setType(i);
        return name;
    }

    public static Node newString(String str) {
        return newString(41, str);
    }

    public static Node newTarget() {
        return new Node(131);
    }

    private static final String propToString(int i) {
        return null;
    }

    private void resetTargets_r() {
        if (this.type == 131 || this.type == 72) {
            labelId(-1);
        }
        for (Node node = this.first; node != null; node = node.next) {
            node.resetTargets_r();
        }
    }

    private void toString(ObjToIntMap objToIntMap, StringBuilder sb) {
    }

    private static void toStringTreeHelper(ScriptNode scriptNode, Node node, ObjToIntMap objToIntMap, int i, StringBuilder sb) {
    }

    public void addChildAfter(Node node, Node node2) {
        if (node.next != null) {
            throw new RuntimeException("newChild had siblings in addChildAfter");
        }
        node.next = node2.next;
        node2.next = node;
        if (this.last == node2) {
            this.last = node;
        }
    }

    public void addChildBefore(Node node, Node node2) {
        if (node.next != null) {
            throw new RuntimeException("newChild had siblings in addChildBefore");
        } else if (this.first == node2) {
            node.next = this.first;
            this.first = node;
        } else {
            addChildAfter(node, getChildBefore(node2));
        }
    }

    public void addChildToBack(Node node) {
        node.next = null;
        if (this.last == null) {
            this.last = node;
            this.first = node;
            return;
        }
        this.last.next = node;
        this.last = node;
    }

    public void addChildToFront(Node node) {
        node.next = this.first;
        this.first = node;
        if (this.last == null) {
            this.last = node;
        }
    }

    public void addChildrenToBack(Node node) {
        if (this.last != null) {
            this.last.next = node;
        }
        this.last = node.getLastSibling();
        if (this.first == null) {
            this.first = node;
        }
    }

    public void addChildrenToFront(Node node) {
        Node lastSibling = node.getLastSibling();
        lastSibling.next = this.first;
        this.first = node;
        if (this.last == null) {
            this.last = lastSibling;
        }
    }

    public Node getChildBefore(Node node) {
        if (node == this.first) {
            return null;
        }
        Node node2 = this.first;
        while (node2.next != node) {
            Node node3 = node2.next;
            node2 = node3;
            if (node3 == null) {
                throw new RuntimeException("node is not a child");
            }
        }
        return node2;
    }

    public final double getDouble() {
        return ((NumberLiteral) this).getNumber();
    }

    public int getExistingIntProp(int i) {
        PropListItem lookupProperty = lookupProperty(i);
        if (lookupProperty == null) {
            Kit.codeBug();
        }
        return lookupProperty.intValue;
    }

    public Node getFirstChild() {
        return this.first;
    }

    public int getIntProp(int i, int i2) {
        PropListItem lookupProperty = lookupProperty(i);
        return lookupProperty == null ? i2 : lookupProperty.intValue;
    }

    public String getJsDoc() {
        Comment jsDocNode = getJsDocNode();
        if (jsDocNode != null) {
            return jsDocNode.getValue();
        }
        return null;
    }

    public Comment getJsDocNode() {
        return (Comment) getProp(24);
    }

    public Node getLastChild() {
        return this.last;
    }

    public Node getLastSibling() {
        Node node = this;
        while (node.next != null) {
            node = node.next;
        }
        return node;
    }

    public int getLineno() {
        return this.lineno;
    }

    public Node getNext() {
        return this.next;
    }

    public Object getProp(int i) {
        PropListItem lookupProperty = lookupProperty(i);
        if (lookupProperty == null) {
            return null;
        }
        return lookupProperty.objectValue;
    }

    public Scope getScope() {
        return ((Name) this).getScope();
    }

    public final String getString() {
        return ((Name) this).getIdentifier();
    }

    public int getType() {
        return this.type;
    }

    public boolean hasChildren() {
        return this.first != null;
    }

    public boolean hasConsistentReturnUsage() {
        int endCheck = endCheck();
        return (endCheck & 4) == 0 || (endCheck & 11) == 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public boolean hasSideEffects() {
        int i = this.type;
        boolean z = true;
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                switch (i) {
                    case 30:
                    case 31:
                        return true;
                    default:
                        switch (i) {
                            case 37:
                            case 38:
                                return true;
                            default:
                                switch (i) {
                                    case 50:
                                    case 51:
                                        return true;
                                    default:
                                        switch (i) {
                                            case 56:
                                            case 57:
                                                return true;
                                            default:
                                                switch (i) {
                                                    case 68:
                                                    case 69:
                                                    case 70:
                                                        return true;
                                                    default:
                                                        switch (i) {
                                                            case 81:
                                                            case 82:
                                                                return true;
                                                            default:
                                                                switch (i) {
                                                                    case 89:
                                                                        break;
                                                                    case 90:
                                                                    case 91:
                                                                    case 92:
                                                                    case 93:
                                                                    case 94:
                                                                    case 95:
                                                                    case 96:
                                                                    case 97:
                                                                    case 98:
                                                                    case 99:
                                                                    case 100:
                                                                    case 101:
                                                                        return true;
                                                                    case 102:
                                                                        if (this.first == null || this.first.next == null || this.first.next.next == null) {
                                                                            Kit.codeBug();
                                                                        }
                                                                        if (!this.first.next.hasSideEffects() || !this.first.next.next.hasSideEffects()) {
                                                                            z = false;
                                                                        }
                                                                        return z;
                                                                    default:
                                                                        switch (i) {
                                                                            case 104:
                                                                            case 105:
                                                                                if (this.first == null || this.last == null) {
                                                                                    Kit.codeBug();
                                                                                }
                                                                                boolean z2 = true;
                                                                                if (!this.first.hasSideEffects()) {
                                                                                    z2 = this.last.hasSideEffects();
                                                                                }
                                                                                return z2;
                                                                            case 106:
                                                                            case 107:
                                                                                return true;
                                                                            default:
                                                                                switch (i) {
                                                                                    case 112:
                                                                                    case 113:
                                                                                    case 114:
                                                                                        return true;
                                                                                    default:
                                                                                        switch (i) {
                                                                                            case 117:
                                                                                            case 118:
                                                                                            case 119:
                                                                                            case 120:
                                                                                            case 121:
                                                                                            case 122:
                                                                                            case 123:
                                                                                            case 124:
                                                                                            case 125:
                                                                                                return true;
                                                                                            default:
                                                                                                switch (i) {
                                                                                                    case 129:
                                                                                                    case 130:
                                                                                                    case 131:
                                                                                                    case 132:
                                                                                                    case 134:
                                                                                                    case 135:
                                                                                                        return true;
                                                                                                    case 133:
                                                                                                        break;
                                                                                                    default:
                                                                                                        switch (i) {
                                                                                                            case 139:
                                                                                                            case 140:
                                                                                                            case 141:
                                                                                                            case 142:
                                                                                                                return true;
                                                                                                            default:
                                                                                                                switch (i) {
                                                                                                                    case 153:
                                                                                                                    case 154:
                                                                                                                        return true;
                                                                                                                    default:
                                                                                                                        switch (i) {
                                                                                                                            case 158:
                                                                                                                            case 159:
                                                                                                                                return true;
                                                                                                                            default:
                                                                                                                                switch (i) {
                                                                                                                                    case -1:
                                                                                                                                    case 35:
                                                                                                                                    case 64:
                                                                                                                                    case 72:
                                                                                                                                        return true;
                                                                                                                                    default:
                                                                                                                                        return false;
                                                                                                                                }
                                                                                                                        }
                                                                                                                }
                                                                                                        }
                                                                                                }
                                                                                        }
                                                                                }
                                                                        }
                                                                }
                                                                if (this.last != null) {
                                                                    return this.last.hasSideEffects();
                                                                }
                                                                return true;
                                                        }
                                                }
                                        }
                                }
                        }
                }
        }
    }

    @Override // java.lang.Iterable
    public Iterator<Node> iterator() {
        return new NodeIterator();
    }

    public final int labelId() {
        if (!(this.type == 131 || this.type == 72)) {
            Kit.codeBug();
        }
        return getIntProp(15, -1);
    }

    public void labelId(int i) {
        if (!(this.type == 131 || this.type == 72)) {
            Kit.codeBug();
        }
        putIntProp(15, i);
    }

    public void putIntProp(int i, int i2) {
        ensureProperty(i).intValue = i2;
    }

    public void putProp(int i, Object obj) {
        if (obj == null) {
            removeProp(i);
        } else {
            ensureProperty(i).objectValue = obj;
        }
    }

    public void removeChild(Node node) {
        Node childBefore = getChildBefore(node);
        if (childBefore == null) {
            this.first = this.first.next;
        } else {
            childBefore.next = node.next;
        }
        if (node == this.last) {
            this.last = childBefore;
        }
        node.next = null;
    }

    public void removeChildren() {
        this.last = null;
        this.first = null;
    }

    public void removeProp(int i) {
        PropListItem propListItem = this.propListHead;
        if (propListItem != null) {
            propListItem = null;
            while (propListItem.type != i) {
                PropListItem propListItem2 = propListItem.next;
                propListItem = propListItem2;
                if (propListItem2 == null) {
                    return;
                }
            }
            if (propListItem == null) {
                this.propListHead = propListItem.next;
            } else {
                propListItem.next = propListItem.next;
            }
        }
    }

    public void replaceChild(Node node, Node node2) {
        node2.next = node.next;
        if (node == this.first) {
            this.first = node2;
        } else {
            getChildBefore(node).next = node2;
        }
        if (node == this.last) {
            this.last = node2;
        }
        node.next = null;
    }

    public void replaceChildAfter(Node node, Node node2) {
        Node node3 = node.next;
        node2.next = node3.next;
        node.next = node2;
        if (node3 == this.last) {
            this.last = node2;
        }
        node3.next = null;
    }

    public void resetTargets() {
        if (this.type == 125) {
            resetTargets_r();
        } else {
            Kit.codeBug();
        }
    }

    public final void setDouble(double d) {
        ((NumberLiteral) this).setNumber(d);
    }

    public void setJsDocNode(Comment comment) {
        putProp(24, comment);
    }

    public void setLineno(int i) {
        this.lineno = i;
    }

    public void setScope(Scope scope) {
        if (scope == null) {
            Kit.codeBug();
        }
        if (!(this instanceof Name)) {
            throw Kit.codeBug();
        }
        ((Name) this).setScope(scope);
    }

    public final void setString(String str) {
        if (str == null) {
            Kit.codeBug();
        }
        ((Name) this).setIdentifier(str);
    }

    public Node setType(int i) {
        this.type = i;
        return this;
    }

    public String toString() {
        return String.valueOf(this.type);
    }

    public String toStringTree(ScriptNode scriptNode) {
        return null;
    }
}
