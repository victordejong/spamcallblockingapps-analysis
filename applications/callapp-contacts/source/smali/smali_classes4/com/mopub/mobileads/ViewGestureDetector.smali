.class public Lcom/mopub/mobileads/ViewGestureDetector;
.super Landroid/view/GestureDetector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/ViewGestureDetector$a;
    }
.end annotation


# instance fields
.field a:Lcom/mopub/mobileads/ViewGestureDetector$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 20
    new-instance v0, Lcom/mopub/mobileads/ViewGestureDetector$a;

    invoke-direct {v0}, Lcom/mopub/mobileads/ViewGestureDetector$a;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/mopub/mobileads/ViewGestureDetector;-><init>(Landroid/content/Context;Lcom/mopub/mobileads/ViewGestureDetector$a;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/mopub/mobileads/ViewGestureDetector$a;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 26
    iput-object p2, p0, Lcom/mopub/mobileads/ViewGestureDetector;->a:Lcom/mopub/mobileads/ViewGestureDetector$a;

    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/ViewGestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method


# virtual methods
.method public isClicked()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/mopub/mobileads/ViewGestureDetector;->a:Lcom/mopub/mobileads/ViewGestureDetector$a;

    .line 1061
    iget-boolean v0, v0, Lcom/mopub/mobileads/ViewGestureDetector$a;->a:Z

    return v0
.end method

.method public setClicked(Z)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/mopub/mobileads/ViewGestureDetector;->a:Lcom/mopub/mobileads/ViewGestureDetector$a;

    iput-boolean p1, v0, Lcom/mopub/mobileads/ViewGestureDetector$a;->a:Z

    return-void
.end method
