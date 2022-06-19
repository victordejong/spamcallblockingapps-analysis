.class public abstract Lorg/mistergroup/shouldianswer/model/AppDatabase;
.super Landroidx/room/j;
.source "AppDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/model/AppDatabase$a;
    }
.end annotation


# static fields
.field public static final d:Lorg/mistergroup/shouldianswer/model/AppDatabase$a;

.field private static e:Lorg/mistergroup/shouldianswer/model/AppDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/model/AppDatabase$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/model/AppDatabase$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/AppDatabase;->d:Lorg/mistergroup/shouldianswer/model/AppDatabase$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/room/j;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/model/AppDatabase;)V
    .locals 0

    .line 21
    sput-object p0, Lorg/mistergroup/shouldianswer/model/AppDatabase;->e:Lorg/mistergroup/shouldianswer/model/AppDatabase;

    return-void
.end method

.method public static final synthetic p()Lorg/mistergroup/shouldianswer/model/AppDatabase;
    .locals 1

    .line 21
    sget-object v0, Lorg/mistergroup/shouldianswer/model/AppDatabase;->e:Lorg/mistergroup/shouldianswer/model/AppDatabase;

    return-object v0
.end method


# virtual methods
.method public abstract l()Lorg/mistergroup/shouldianswer/model/y;
.end method

.method public abstract m()Lorg/mistergroup/shouldianswer/model/p;
.end method

.method public abstract n()Lorg/mistergroup/shouldianswer/model/e;
.end method

.method public abstract o()Lorg/mistergroup/shouldianswer/model/u;
.end method
