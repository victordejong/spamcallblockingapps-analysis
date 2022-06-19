.class Le/e/a/f$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/e/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Le/e/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/e/a/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/e/a/f;-><init>(Le/e/a/f$a;)V

    sput-object v0, Le/e/a/f$b;->a:Le/e/a/f;

    return-void
.end method

.method static synthetic a()Le/e/a/f;
    .locals 1

    sget-object v0, Le/e/a/f$b;->a:Le/e/a/f;

    return-object v0
.end method
