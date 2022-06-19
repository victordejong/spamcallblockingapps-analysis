.class public abstract Lrk;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrk$a;
    }
.end annotation


# instance fields
.field public final a:Lkk;


# direct methods
.method public constructor <init>(Lkk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrk;->a:Lkk;

    return-void
.end method


# virtual methods
.method public final a(Lyt;J)V
    .locals 1

    invoke-virtual {p0, p1}, Lrk;->b(Lyt;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lrk;->c(Lyt;J)V

    :cond_0
    return-void
.end method

.method public abstract b(Lyt;)Z
.end method

.method public abstract c(Lyt;J)V
.end method
