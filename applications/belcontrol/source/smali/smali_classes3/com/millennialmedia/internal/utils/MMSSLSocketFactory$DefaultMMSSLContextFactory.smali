.class public Lcom/millennialmedia/internal/utils/MMSSLSocketFactory$DefaultMMSSLContextFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/utils/MMSSLSocketFactory$MMSSLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultMMSSLContextFactory"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;


# direct methods
.method private constructor <init>(Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory$DefaultMMSSLContextFactory;->this$0:Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;Lcom/millennialmedia/internal/utils/MMSSLSocketFactory$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory$DefaultMMSSLContextFactory;-><init>(Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;)V

    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    .locals 1

    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-object p1
.end method
