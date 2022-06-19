.class final Le/e/a/j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/e/a/j;->f(Le/e/a/s;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic b:Le/e/a/s;


# direct methods
.method constructor <init>(Le/e/a/s;)V
    .locals 0

    iput-object p1, p0, Le/e/a/j$a;->b:Le/e/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Le/e/a/j$a;->b:Le/e/a/s;

    invoke-interface {v0}, Le/e/a/s;->l()V

    return-void
.end method
