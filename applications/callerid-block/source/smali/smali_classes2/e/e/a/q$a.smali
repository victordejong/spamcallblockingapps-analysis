.class final Le/e/a/q$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/e/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Le/e/a/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/e/a/q;

    invoke-direct {v0}, Le/e/a/q;-><init>()V

    sput-object v0, Le/e/a/q$a;->a:Le/e/a/q;

    return-void
.end method

.method static synthetic a()Le/e/a/q;
    .locals 1

    sget-object v0, Le/e/a/q$a;->a:Le/e/a/q;

    return-object v0
.end method
