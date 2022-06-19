package org.bson.json;

import org.bson.assertions.Assertions;
/* loaded from: classes3-dex2jar.jar:org/bson/json/StrictCharacterStreamJsonWriterSettings.class */
public final class StrictCharacterStreamJsonWriterSettings {
    private final boolean indent;
    private final String indentCharacters;
    private final int maxLength;
    private final String newLineCharacters;

    /* loaded from: classes3-dex2jar.jar:org/bson/json/StrictCharacterStreamJsonWriterSettings$Builder.class */
    public static final class Builder {
        private boolean indent;
        private String indentCharacters;
        private int maxLength;
        private String newLineCharacters;

        private Builder() {
            this.newLineCharacters = System.getProperty("line.separator");
            this.indentCharacters = "  ";
        }

        public StrictCharacterStreamJsonWriterSettings build() {
            return new StrictCharacterStreamJsonWriterSettings(this);
        }

        public Builder indent(boolean z) {
            this.indent = z;
            return this;
        }

        public Builder indentCharacters(String str) {
            Assertions.notNull("indentCharacters", str);
            this.indentCharacters = str;
            return this;
        }

        public Builder maxLength(int i) {
            this.maxLength = i;
            return this;
        }

        public Builder newLineCharacters(String str) {
            Assertions.notNull("newLineCharacters", str);
            this.newLineCharacters = str;
            return this;
        }
    }

    private StrictCharacterStreamJsonWriterSettings(Builder builder) {
        this.indent = builder.indent;
        this.newLineCharacters = builder.newLineCharacters != null ? builder.newLineCharacters : System.getProperty("line.separator");
        this.indentCharacters = builder.indentCharacters;
        this.maxLength = builder.maxLength;
    }

    public static Builder builder() {
        return new Builder();
    }

    public String getIndentCharacters() {
        return this.indentCharacters;
    }

    public int getMaxLength() {
        return this.maxLength;
    }

    public String getNewLineCharacters() {
        return this.newLineCharacters;
    }

    public boolean isIndent() {
        return this.indent;
    }
}
