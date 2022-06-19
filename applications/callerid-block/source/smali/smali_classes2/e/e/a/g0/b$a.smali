.class public Le/e/a/g0/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/e/a/h0/c$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/e/a/g0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Le/e/a/g0/a;
    .locals 1

    new-instance v0, Le/e/a/g0/b;

    invoke-direct {v0, p1}, Le/e/a/g0/b;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
