.class public Lf/a/a/e/d;
.super Ljava/lang/Object;
.source "HanyuPinyinVCharType.java"


# static fields
.field public static final a:Lf/a/a/e/d;

.field public static final b:Lf/a/a/e/d;

.field public static final c:Lf/a/a/e/d;


# instance fields
.field protected d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lf/a/a/e/d;

    const-string v1, "WITH_U_AND_COLON"

    invoke-direct {v0, v1}, Lf/a/a/e/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf/a/a/e/d;->a:Lf/a/a/e/d;

    .line 2
    new-instance v0, Lf/a/a/e/d;

    const-string v1, "WITH_V"

    invoke-direct {v0, v1}, Lf/a/a/e/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf/a/a/e/d;->b:Lf/a/a/e/d;

    .line 3
    new-instance v0, Lf/a/a/e/d;

    const-string v1, "WITH_U_UNICODE"

    invoke-direct {v0, v1}, Lf/a/a/e/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf/a/a/e/d;->c:Lf/a/a/e/d;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lf/a/a/e/d;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/d;->d:Ljava/lang/String;

    return-void
.end method
