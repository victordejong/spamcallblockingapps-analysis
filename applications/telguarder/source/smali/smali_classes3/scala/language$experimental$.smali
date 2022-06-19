.class public Lscala/language$experimental$;
.super Ljava/lang/Object;
.source "language.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/language;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "experimental$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/language$experimental$;


# instance fields
.field private volatile bitmap$0:Z

.field private macros:Lscala/languageFeature$experimental$macros;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/language$experimental$;

    invoke-direct {v0}, Lscala/language$experimental$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/language$experimental$;->MODULE$:Lscala/language$experimental$;

    return-void
.end method

.method private macros$lzycompute()Lscala/languageFeature$experimental$macros;
    .locals 1

    .line 181
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lscala/language$experimental$;->bitmap$0:Z

    if-nez v0, :cond_0

    sget-object v0, Lscala/languageFeature$experimental$macros$;->MODULE$:Lscala/languageFeature$experimental$macros$;

    iput-object v0, p0, Lscala/language$experimental$;->macros:Lscala/languageFeature$experimental$macros;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lscala/language$experimental$;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/language$experimental$;->macros:Lscala/languageFeature$experimental$macros;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public macros()Lscala/languageFeature$experimental$macros;
    .locals 1

    .line 181
    iget-boolean v0, p0, Lscala/language$experimental$;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/language$experimental$;->macros:Lscala/languageFeature$experimental$macros;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lscala/language$experimental$;->macros$lzycompute()Lscala/languageFeature$experimental$macros;

    move-result-object v0

    :goto_0
    return-object v0
.end method
