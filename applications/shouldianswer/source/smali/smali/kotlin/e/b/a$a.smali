.class Lkotlin/e/b/a$a;
.super Ljava/lang/Object;
.source "CallableReference.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/e/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lkotlin/e/b/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lkotlin/e/b/a$a;

    invoke-direct {v0}, Lkotlin/e/b/a$a;-><init>()V

    sput-object v0, Lkotlin/e/b/a$a;->a:Lkotlin/e/b/a$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lkotlin/e/b/a$a;
    .locals 1

    .line 39
    sget-object v0, Lkotlin/e/b/a$a;->a:Lkotlin/e/b/a$a;

    return-object v0
.end method
