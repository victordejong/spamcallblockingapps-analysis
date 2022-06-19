.class public final Lil$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lil$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lyt;


# direct methods
.method public constructor <init>(Lhl$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lhl$b;->b:Lyt;

    iput-object p1, p0, Lil$d;->c:Lyt;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lyt;->J(I)V

    invoke-virtual {p1}, Lyt;->A()I

    move-result v0

    iput v0, p0, Lil$d;->a:I

    invoke-virtual {p1}, Lyt;->A()I

    move-result p1

    iput p1, p0, Lil$d;->b:I

    return-void
.end method


# virtual methods
.method public getSampleCount()I
    .locals 1

    iget v0, p0, Lil$d;->b:I

    return v0
.end method

.method public isFixedSampleSize()Z
    .locals 1

    iget v0, p0, Lil$d;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readNextSampleSize()I
    .locals 1

    iget v0, p0, Lil$d;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lil$d;->c:Lyt;

    invoke-virtual {v0}, Lyt;->A()I

    move-result v0

    :cond_0
    return v0
.end method
