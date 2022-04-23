package org.simpleframework.xml.core;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/Section.class */
public interface Section extends Iterable<String> {
    String getAttribute(String str) throws Exception;

    LabelMap getAttributes() throws Exception;

    Label getElement(String str) throws Exception;

    LabelMap getElements() throws Exception;

    String getName();

    String getPath(String str) throws Exception;

    String getPrefix();

    Section getSection(String str) throws Exception;

    Label getText() throws Exception;

    boolean isSection(String str) throws Exception;
}
