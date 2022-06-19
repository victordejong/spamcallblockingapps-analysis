.class public interface abstract Lkotlin/reflect/jvm/internal/impl/f/f$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/f/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/f/f$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/f/f$c$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/f/f$c$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/f/f$c;->a:Lkotlin/reflect/jvm/internal/impl/f/f$c;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
.end method
