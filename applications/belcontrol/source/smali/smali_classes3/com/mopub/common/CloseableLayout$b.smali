.class public final Lcom/mopub/common/CloseableLayout$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/CloseableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/common/CloseableLayout;


# direct methods
.method public constructor <init>(Lcom/mopub/common/CloseableLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/common/CloseableLayout$b;->a:Lcom/mopub/common/CloseableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mopub/common/CloseableLayout;Lcom/mopub/common/CloseableLayout$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mopub/common/CloseableLayout$b;-><init>(Lcom/mopub/common/CloseableLayout;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mopub/common/CloseableLayout$b;->a:Lcom/mopub/common/CloseableLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mopub/common/CloseableLayout;->a(Lcom/mopub/common/CloseableLayout;Z)V

    return-void
.end method
