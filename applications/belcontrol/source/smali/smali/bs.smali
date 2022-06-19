.class public abstract Lbs;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbs$a;
    }
.end annotation


# instance fields
.field public a:Lbs$a;

.field public b:Lgs;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lgs;
    .locals 1

    iget-object v0, p0, Lbs;->b:Lgs;

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lgs;

    return-object v0
.end method

.method public final b(Lbs$a;Lgs;)V
    .locals 0

    iput-object p1, p0, Lbs;->a:Lbs$a;

    iput-object p2, p0, Lbs;->b:Lgs;

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lbs;->a:Lbs$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lbs$a;->onTrackSelectionsInvalidated()V

    :cond_0
    return-void
.end method

.method public abstract d(Ljava/lang/Object;)V
.end method

.method public abstract e([Lkh;Landroidx/media2/exoplayer/external/source/TrackGroupArray;Lhp$a;Lph;)Lcs;
.end method
