.class public Lv/i;
.super Lv/h;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lv/e;)V
    .locals 2

    const/4 p1, 0x0

    .line 1
    :goto_0
    iget v0, p0, Lv/h;->s0:I

    if-ge p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Lv/h;->r0:[Lv/d;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lv/d;->G:Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
