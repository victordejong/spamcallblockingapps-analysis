.class public final Llo$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:I


# direct methods
.method public constructor <init>(IZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Llo$b;->a:I

    iput-boolean p2, p0, Llo$b;->b:Z

    iput p3, p0, Llo$b;->c:I

    return-void
.end method

.method public static synthetic a(Llo$b;)I
    .locals 0

    iget p0, p0, Llo$b;->a:I

    return p0
.end method

.method public static synthetic b(Llo$b;)I
    .locals 0

    iget p0, p0, Llo$b;->c:I

    return p0
.end method

.method public static synthetic c(Llo$b;)Z
    .locals 0

    iget-boolean p0, p0, Llo$b;->b:Z

    return p0
.end method
