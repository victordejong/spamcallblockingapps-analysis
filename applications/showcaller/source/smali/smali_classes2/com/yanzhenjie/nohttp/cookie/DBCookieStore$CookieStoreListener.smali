.class public interface abstract Lcom/yanzhenjie/nohttp/cookie/DBCookieStore$CookieStoreListener;
.super Ljava/lang/Object;
.source "DBCookieStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CookieStoreListener"
.end annotation


# virtual methods
.method public abstract onRemoveCookie(Ljava/net/URI;Ljava/net/HttpCookie;)V
.end method

.method public abstract onSaveCookie(Ljava/net/URI;Ljava/net/HttpCookie;)V
.end method
