.class public final Lcom/explorestack/iab/mraid/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/iab/mraid/i$a;
    }
.end annotation


# instance fields
.field a:Lcom/explorestack/iab/mraid/i$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/explorestack/iab/mraid/i;->a:Lcom/explorestack/iab/mraid/i$a;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/i$a;->b()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/explorestack/iab/mraid/i;->a:Lcom/explorestack/iab/mraid/i$a;

    :cond_0
    return-void
.end method
