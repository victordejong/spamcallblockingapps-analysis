.class public Lf/a/a/e/a;
.super Ljava/lang/Object;
.source "HanyuPinyinCaseType.java"


# static fields
.field public static final a:Lf/a/a/e/a;

.field public static final b:Lf/a/a/e/a;


# instance fields
.field protected c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lf/a/a/e/a;

    const-string v1, "UPPERCASE"

    invoke-direct {v0, v1}, Lf/a/a/e/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf/a/a/e/a;->a:Lf/a/a/e/a;

    .line 2
    new-instance v0, Lf/a/a/e/a;

    const-string v1, "LOWERCASE"

    invoke-direct {v0, v1}, Lf/a/a/e/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf/a/a/e/a;->b:Lf/a/a/e/a;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lf/a/a/e/a;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/a;->c:Ljava/lang/String;

    return-void
.end method
