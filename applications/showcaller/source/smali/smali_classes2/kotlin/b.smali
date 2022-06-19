.class final Lkotlin/b;
.super Ljava/lang/Object;
.source "KotlinVersion.kt"


# static fields
.field public static final a:Lkotlin/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/b;

    invoke-direct {v0}, Lkotlin/b;-><init>()V

    sput-object v0, Lkotlin/b;->a:Lkotlin/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lkotlin/a;
    .locals 4

    .line 1
    new-instance v0, Lkotlin/a;

    const/4 v1, 0x1

    const/4 v2, 0x6

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lkotlin/a;-><init>(III)V

    return-object v0
.end method
