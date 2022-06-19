.class public Lf2/b$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f11014f

    .line 2
    iput p1, p0, Lf2/b$g;->b:I

    const p1, 0x7f11014b

    .line 3
    iput p1, p0, Lf2/b$g;->c:I

    const p1, 0x7f11014c

    .line 4
    iput p1, p0, Lf2/b$g;->d:I

    const p1, 0x7f11014e

    .line 5
    iput p1, p0, Lf2/b$g;->e:I

    const p1, 0x7f110151

    .line 6
    iput p1, p0, Lf2/b$g;->f:I

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lf2/b$g;->g:Z

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lf2/b$g;->h:Z

    .line 9
    iput p2, p0, Lf2/b$g;->a:I

    return-void
.end method
