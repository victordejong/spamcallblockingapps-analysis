.class public Le/e/a/d0/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/e/a/h0/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/e/a/d0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Le/e/a/d0/c$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Le/e/a/d0/c$b;-><init>(Le/e/a/d0/c$a;)V

    return-void
.end method

.method public constructor <init>(Le/e/a/d0/c$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Le/e/a/d0/b;
    .locals 2

    new-instance v0, Le/e/a/d0/c;

    iget-object v1, p0, Le/e/a/d0/c$b;->a:Le/e/a/d0/c$a;

    invoke-direct {v0, p1, v1}, Le/e/a/d0/c;-><init>(Ljava/lang/String;Le/e/a/d0/c$a;)V

    return-object v0
.end method
