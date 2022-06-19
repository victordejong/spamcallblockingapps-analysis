.class final Le/e/a/m$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/e/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field private static final a:Le/e/a/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/e/a/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/e/a/m;-><init>(Le/e/a/m$a;)V

    sput-object v0, Le/e/a/m$b;->a:Le/e/a/m;

    return-void
.end method

.method static synthetic a()Le/e/a/m;
    .locals 1

    sget-object v0, Le/e/a/m$b;->a:Le/e/a/m;

    return-object v0
.end method
