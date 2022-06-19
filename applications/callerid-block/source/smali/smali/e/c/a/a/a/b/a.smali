.class public final Le/c/a/a/a/b/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile a:Le/c/a/a/a/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/c/a/a/a/b/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/c/a/a/a/b/c;-><init>(Le/c/a/a/a/b/d;)V

    sput-object v0, Le/c/a/a/a/b/a;->a:Le/c/a/a/a/b/b;

    return-void
.end method

.method public static a()Le/c/a/a/a/b/b;
    .locals 1

    sget-object v0, Le/c/a/a/a/b/a;->a:Le/c/a/a/a/b/b;

    return-object v0
.end method
