.class public final Lo1/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lo1/i;

.field public b:Lo1/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lo1/i;->a:Lo1/i;

    iput-object v0, p0, Lo1/b$a;->a:Lo1/i;

    .line 3
    new-instance v0, Lo1/c;

    invoke-direct {v0}, Lo1/c;-><init>()V

    iput-object v0, p0, Lo1/b$a;->b:Lo1/c;

    return-void
.end method
