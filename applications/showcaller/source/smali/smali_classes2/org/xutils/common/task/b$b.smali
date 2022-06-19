.class Lorg/xutils/common/task/b$b;
.super Ljava/lang/Object;
.source "TaskProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/common/task/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:Lorg/xutils/common/task/b;

.field final b:[Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>(Lorg/xutils/common/task/b;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/xutils/common/task/b$b;->a:Lorg/xutils/common/task/b;

    .line 3
    iput-object p2, p0, Lorg/xutils/common/task/b$b;->b:[Ljava/lang/Object;

    return-void
.end method
