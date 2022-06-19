.class Le/c/a/b/w/n$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/a/b/w/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Le/c/a/b/w/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/c/a/b/w/n;

    invoke-direct {v0}, Le/c/a/b/w/n;-><init>()V

    sput-object v0, Le/c/a/b/w/n$a;->a:Le/c/a/b/w/n;

    return-void
.end method
