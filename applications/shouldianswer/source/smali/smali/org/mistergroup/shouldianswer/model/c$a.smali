.class final Lorg/mistergroup/shouldianswer/model/c$a;
.super Lkotlin/e/b/i;
.source "AppSettings.kt"

# interfaces
.implements Lkotlin/e/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/model/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/e/b/i;",
        "Lkotlin/e/a/a<",
        "Lorg/mistergroup/shouldianswer/model/t$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/model/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mistergroup/shouldianswer/model/c$a;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/model/c$a;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/c$a;->a:Lorg/mistergroup/shouldianswer/model/c$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/e/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/c$a;->b()Lorg/mistergroup/shouldianswer/model/t$a;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lorg/mistergroup/shouldianswer/model/t$a;
    .locals 1

    .line 62
    sget-object v0, Lorg/mistergroup/shouldianswer/model/t;->a:Lorg/mistergroup/shouldianswer/model/t;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/t;->a()Lorg/mistergroup/shouldianswer/model/t$a;

    move-result-object v0

    return-object v0
.end method
