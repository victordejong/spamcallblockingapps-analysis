package zendesk.support;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/ZendeskTracker.class */
public interface ZendeskTracker {
    void helpCenterArticleViewed();

    void helpCenterLoaded();

    void helpCenterSearched(String str);

    void requestCreated();

    void requestUpdated();
}
