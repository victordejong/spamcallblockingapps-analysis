.class public Low$g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Low;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Z

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(IZZZIZIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Low$g;->a:I

    iput-boolean p2, p0, Low$g;->b:Z

    iput-boolean p6, p0, Low$g;->c:Z

    iput p7, p0, Low$g;->d:I

    iput p8, p0, Low$g;->e:I

    iput p9, p0, Low$g;->f:I

    iput p10, p0, Low$g;->g:I

    iput p11, p0, Low$g;->h:I

    return-void
.end method
