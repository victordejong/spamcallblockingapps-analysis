.class final Le/e/a/h$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/e/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field private static final a:Le/e/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/e/a/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/e/a/h;-><init>(Le/e/a/h$a;)V

    sput-object v0, Le/e/a/h$b;->a:Le/e/a/h;

    return-void
.end method

.method static synthetic a()Le/e/a/h;
    .locals 1

    sget-object v0, Le/e/a/h$b;->a:Le/e/a/h;

    return-object v0
.end method
