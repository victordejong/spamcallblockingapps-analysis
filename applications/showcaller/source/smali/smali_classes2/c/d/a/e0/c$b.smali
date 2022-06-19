.class public Lc/d/a/e0/c$b;
.super Ljava/lang/Object;
.source "FileDownloadUrlConnection.java"

# interfaces
.implements Lc/d/a/i0/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/e0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Lc/d/a/e0/c$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lc/d/a/e0/c$b;-><init>(Lc/d/a/e0/c$a;)V

    return-void
.end method

.method public constructor <init>(Lc/d/a/e0/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lc/d/a/e0/b;
    .locals 2

    .line 1
    new-instance v0, Lc/d/a/e0/c;

    iget-object v1, p0, Lc/d/a/e0/c$b;->a:Lc/d/a/e0/c$a;

    invoke-direct {v0, p1, v1}, Lc/d/a/e0/c;-><init>(Ljava/lang/String;Lc/d/a/e0/c$a;)V

    return-object v0
.end method
