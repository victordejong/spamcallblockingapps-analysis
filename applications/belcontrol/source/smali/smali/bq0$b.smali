.class public final Lbq0$b;
.super Lbq0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbq0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lbq0;-><init>()V

    iput p1, p0, Lbq0$b;->a:I

    iput p2, p0, Lbq0$b;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lbq0$b;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lbq0$b;->a:I

    return v0
.end method
