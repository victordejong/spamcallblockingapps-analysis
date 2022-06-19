.class public Lw8/j$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw8/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lw8/j$b;->b:Z

    .line 3
    iput-boolean v0, p0, Lw8/j$b;->c:Z

    .line 4
    iput-object p1, p0, Lw8/j$b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lw8/j;
    .locals 2

    .line 1
    new-instance v0, Lw8/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lw8/j;-><init>(Lw8/j$b;Lw8/j$a;)V

    return-object v0
.end method
