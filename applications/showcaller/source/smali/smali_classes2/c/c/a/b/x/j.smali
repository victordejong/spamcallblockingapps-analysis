.class public final Lc/c/a/b/x/j;
.super Lc/c/a/b/x/f;
.source "OffsetEdgeTreatment.java"


# instance fields
.field private final a:Lc/c/a/b/x/f;

.field private final b:F


# direct methods
.method public constructor <init>(Lc/c/a/b/x/f;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/c/a/b/x/f;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/b/x/j;->a:Lc/c/a/b/x/f;

    .line 3
    iput p2, p0, Lc/c/a/b/x/j;->b:F

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/x/j;->a:Lc/c/a/b/x/f;

    invoke-virtual {v0}, Lc/c/a/b/x/f;->a()Z

    move-result v0

    return v0
.end method

.method public b(FFFLc/c/a/b/x/o;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/b/x/j;->a:Lc/c/a/b/x/f;

    iget v1, p0, Lc/c/a/b/x/j;->b:F

    sub-float/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/c/a/b/x/f;->b(FFFLc/c/a/b/x/o;)V

    return-void
.end method
