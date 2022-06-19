.class Le/g/a/a/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/g/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Le/g/a/a/f;


# direct methods
.method constructor <init>(Le/g/a/a/f;)V
    .locals 0

    iput-object p1, p0, Le/g/a/a/f$a;->b:Le/g/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Le/g/a/a/f$a;->b:Le/g/a/a/f;

    invoke-static {v0}, Le/g/a/a/f;->a(Le/g/a/a/f;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/g/a/a/f$a;->b:Le/g/a/a/f;

    invoke-static {v0}, Le/g/a/a/f;->c(Le/g/a/a/f;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Le/g/a/a/f$a;->b:Le/g/a/a/f;

    invoke-static {v0}, Le/g/a/a/f;->b(Le/g/a/a/f;)V

    :goto_0
    return-void
.end method
