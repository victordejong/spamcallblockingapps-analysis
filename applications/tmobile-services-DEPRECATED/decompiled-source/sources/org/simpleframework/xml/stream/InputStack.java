package org.simpleframework.xml.stream;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/stream/InputStack.class */
class InputStack extends Stack<InputNode> {
    public InputStack() {
        super(6);
    }

    public boolean isRelevant(InputNode inputNode) {
        return contains(inputNode) || isEmpty();
    }
}
