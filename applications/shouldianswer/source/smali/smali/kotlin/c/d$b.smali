.class public final Lkotlin/c/d$b;
.super Ljava/lang/Object;
.source "ContinuationInterceptor.kt"

# interfaces
.implements Lkotlin/c/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/c/f$c<",
        "Lkotlin/c/d;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Lkotlin/c/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lkotlin/c/d$b;

    invoke-direct {v0}, Lkotlin/c/d$b;-><init>()V

    sput-object v0, Lkotlin/c/d$b;->a:Lkotlin/c/d$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
