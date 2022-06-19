package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.JsonParser;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/TreeNode.class */
public interface TreeNode {
    JsonToken asToken();

    JsonParser.NumberType numberType();
}
