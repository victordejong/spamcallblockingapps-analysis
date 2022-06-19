package com.google.zxing.client.result;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/client/result/ISBNParsedResult.class */
public final class ISBNParsedResult extends ParsedResult {
    private final String isbn;

    public ISBNParsedResult(String str) {
        super(ParsedResultType.ISBN);
        this.isbn = str;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        return this.isbn;
    }

    public String getISBN() {
        return this.isbn;
    }
}
