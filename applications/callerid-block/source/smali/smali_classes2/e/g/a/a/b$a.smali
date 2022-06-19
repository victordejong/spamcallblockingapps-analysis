.class Le/g/a/a/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/g/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Le/g/a/a/b;


# direct methods
.method constructor <init>(Le/g/a/a/b;)V
    .locals 0

    iput-object p1, p0, Le/g/a/a/b$a;->b:Le/g/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Le/g/a/a/b$a;->b:Le/g/a/a/b;

    invoke-static {v0}, Le/g/a/a/b;->a(Le/g/a/a/b;)V

    return-void
.end method
