.class final Landroidx/c/a/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# static fields
.field static final a:Landroidx/c/a/a$c;


# instance fields
.field final b:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 221
    new-instance v0, Landroidx/c/a/a$c;

    new-instance v1, Landroidx/c/a/a$c$1;

    const-string v2, "Failure occurred while trying to finish a future."

    invoke-direct {v1, v2}, Landroidx/c/a/a$c$1;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/c/a/a$c;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Landroidx/c/a/a$c;->a:Landroidx/c/a/a$c;

    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    invoke-static {p1}, Landroidx/c/a/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    iput-object p1, p0, Landroidx/c/a/a$c;->b:Ljava/lang/Throwable;

    return-void
.end method
