package com.google.zxing.client.result;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/client/result/TextParsedResult.class */
public final class TextParsedResult extends ParsedResult {
    private final String language;
    private final String text;

    public TextParsedResult(String str, String str2) {
        super(ParsedResultType.TEXT);
        this.text = str;
        this.language = str2;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        return this.text;
    }

    public String getLanguage() {
        return this.language;
    }

    public String getText() {
        return this.text;
    }
}
