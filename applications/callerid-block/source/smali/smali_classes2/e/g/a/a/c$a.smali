.class Le/g/a/a/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/g/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Le/g/a/a/c;


# direct methods
.method constructor <init>(Le/g/a/a/c;)V
    .locals 0

    iput-object p1, p0, Le/g/a/a/c$a;->b:Le/g/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Le/g/a/a/c$a;->b:Le/g/a/a/c;

    invoke-static {v0}, Le/g/a/a/c;->a(Le/g/a/a/c;)V

    return-void
.end method
