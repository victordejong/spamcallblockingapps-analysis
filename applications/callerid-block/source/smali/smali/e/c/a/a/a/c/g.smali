.class public final Le/c/a/a/a/c/g;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Le/c/a/a/a/c/d;

.field private static volatile b:Le/c/a/a/a/c/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/c/a/a/a/c/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/c/a/a/a/c/f;-><init>(Le/c/a/a/a/c/e;)V

    sput-object v0, Le/c/a/a/a/c/g;->a:Le/c/a/a/a/c/d;

    sput-object v0, Le/c/a/a/a/c/g;->b:Le/c/a/a/a/c/d;

    return-void
.end method

.method public static a()Le/c/a/a/a/c/d;
    .locals 1

    sget-object v0, Le/c/a/a/a/c/g;->b:Le/c/a/a/a/c/d;

    return-object v0
.end method
