.class Lf/a/a/a$b;
.super Ljava/lang/Object;
.source "ChineseToPinyinResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field static final a:Lf/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lf/a/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lf/a/a/a;-><init>(Lf/a/a/a$a;)V

    sput-object v0, Lf/a/a/a$b;->a:Lf/a/a/a;

    return-void
.end method
