.class public abstract Lv6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lv6/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Lt6/c;->a:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 2
    new-instance v0, Lv6/a;

    invoke-direct {v0}, Lv6/a;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lv6/c;

    invoke-direct {v0}, Lv6/c;-><init>()V

    :goto_0
    sput-object v0, Lv6/b;->a:Lv6/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
