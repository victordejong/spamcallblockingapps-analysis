.class public abstract Lcom/explorestack/iab/vast/processor/VastMediaPicker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/explorestack/iab/vast/tags/MediaFileTag;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract pickVideo(Ljava/util/List;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/explorestack/iab/vast/tags/k;",
            "TT;>;>;)",
            "Landroid/util/Pair<",
            "Lcom/explorestack/iab/vast/tags/k;",
            "TT;>;"
        }
    .end annotation
.end method
