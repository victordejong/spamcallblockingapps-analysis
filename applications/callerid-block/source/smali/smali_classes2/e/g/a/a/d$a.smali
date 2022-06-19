.class Le/g/a/a/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/g/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Le/g/a/a/d;


# direct methods
.method constructor <init>(Le/g/a/a/d;)V
    .locals 0

    iput-object p1, p0, Le/g/a/a/d$a;->b:Le/g/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Le/g/a/a/d$a;->b:Le/g/a/a/d;

    invoke-static {v0}, Le/g/a/a/d;->a(Le/g/a/a/d;)V

    return-void
.end method
