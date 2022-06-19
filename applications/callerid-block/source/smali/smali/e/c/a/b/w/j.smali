.class public final Le/c/a/b/w/j;
.super Le/c/a/b/w/f;
.source ""


# instance fields
.field private final a:Le/c/a/b/w/f;

.field private final b:F


# direct methods
.method public constructor <init>(Le/c/a/b/w/f;F)V
    .locals 0

    invoke-direct {p0}, Le/c/a/b/w/f;-><init>()V

    iput-object p1, p0, Le/c/a/b/w/j;->a:Le/c/a/b/w/f;

    iput p2, p0, Le/c/a/b/w/j;->b:F

    return-void
.end method


# virtual methods
.method b()Z
    .locals 1

    iget-object v0, p0, Le/c/a/b/w/j;->a:Le/c/a/b/w/f;

    invoke-virtual {v0}, Le/c/a/b/w/f;->b()Z

    move-result v0

    return v0
.end method

.method public c(FFFLe/c/a/b/w/o;)V
    .locals 2

    iget-object v0, p0, Le/c/a/b/w/j;->a:Le/c/a/b/w/f;

    iget v1, p0, Le/c/a/b/w/j;->b:F

    sub-float/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Le/c/a/b/w/f;->c(FFFLe/c/a/b/w/o;)V

    return-void
.end method
