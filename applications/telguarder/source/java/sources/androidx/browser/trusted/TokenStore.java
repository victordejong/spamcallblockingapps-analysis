package androidx.browser.trusted;
/* loaded from: classes-dex2jar.jar:androidx/browser/trusted/TokenStore.class */
public interface TokenStore {
    Token load();

    void store(Token token);
}
