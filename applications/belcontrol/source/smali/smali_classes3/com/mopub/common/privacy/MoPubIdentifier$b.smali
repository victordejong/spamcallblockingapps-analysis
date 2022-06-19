.class public Lcom/mopub/common/privacy/MoPubIdentifier$b;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/privacy/MoPubIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/common/privacy/MoPubIdentifier;


# direct methods
.method public constructor <init>(Lcom/mopub/common/privacy/MoPubIdentifier;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier$b;->a:Lcom/mopub/common/privacy/MoPubIdentifier;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mopub/common/privacy/MoPubIdentifier;Lcom/mopub/common/privacy/MoPubIdentifier$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mopub/common/privacy/MoPubIdentifier$b;-><init>(Lcom/mopub/common/privacy/MoPubIdentifier;)V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    iget-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier$b;->a:Lcom/mopub/common/privacy/MoPubIdentifier;

    invoke-virtual {p1}, Lcom/mopub/common/privacy/MoPubIdentifier;->f()V

    iget-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier$b;->a:Lcom/mopub/common/privacy/MoPubIdentifier;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->a(Lcom/mopub/common/privacy/MoPubIdentifier;Z)Z

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mopub/common/privacy/MoPubIdentifier$b;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
