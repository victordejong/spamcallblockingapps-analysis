.class public abstract Lorg/apache/http/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lorg/apache/http/a/b;

.field protected b:Lorg/apache/http/b/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, v0}, Lorg/apache/http/a/a;-><init>(Lorg/apache/http/b/a;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/http/b/a;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lorg/apache/http/a/b;

    invoke-direct {v0}, Lorg/apache/http/a/b;-><init>()V

    iput-object v0, p0, Lorg/apache/http/a/a;->a:Lorg/apache/http/a/b;

    .line 60
    iput-object p1, p0, Lorg/apache/http/a/a;->b:Lorg/apache/http/b/a;

    return-void
.end method
