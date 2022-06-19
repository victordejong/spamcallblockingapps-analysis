.class public final Le/c/a/a/a/d/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Le/c/a/a/a/d/a;

.field private static volatile b:Le/c/a/a/a/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/c/a/a/a/d/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/c/a/a/a/d/c;-><init>(Le/c/a/a/a/d/b;)V

    sput-object v0, Le/c/a/a/a/d/d;->a:Le/c/a/a/a/d/a;

    sput-object v0, Le/c/a/a/a/d/d;->b:Le/c/a/a/a/d/a;

    return-void
.end method

.method public static a()Le/c/a/a/a/d/a;
    .locals 1

    sget-object v0, Le/c/a/a/a/d/d;->b:Le/c/a/a/a/d/a;

    return-object v0
.end method
