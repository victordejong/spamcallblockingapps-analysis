.class public final Lcom/google/android/gms/internal/measurement/cf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/cf$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/measurement/ce;

.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 10
    const/4 v0, 0x0

    .line 11
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/cf;->a()Ljava/lang/Integer;

    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0x13

    if-lt v1, v3, :cond_0

    .line 13
    new-instance v1, Lcom/google/android/gms/internal/measurement/cj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/cj;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    sput-object v1, Lcom/google/android/gms/internal/measurement/cf;->a:Lcom/google/android/gms/internal/measurement/ce;

    .line 26
    if-nez v0, :cond_3

    move v0, v2

    :goto_1
    sput v0, Lcom/google/android/gms/internal/measurement/cf;->b:I

    .line 27
    return-void

    .line 14
    :cond_0
    :try_start_1
    const-string/jumbo v1, "com.google.devtools.build.android.desugar.runtime.twr_disable_mimic"

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 15
    :goto_2
    if-eqz v1, :cond_2

    .line 16
    new-instance v1, Lcom/google/android/gms/internal/measurement/ci;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/ci;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 19
    :catch_0
    move-exception v1

    .line 20
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-class v4, Lcom/google/android/gms/internal/measurement/cf$a;

    .line 21
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit16 v5, v5, 0x85

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "will be used. The error is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 24
    new-instance v1, Lcom/google/android/gms/internal/measurement/cf$a;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/cf$a;-><init>()V

    goto :goto_0

    .line 14
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 17
    :cond_2
    :try_start_2
    new-instance v1, Lcom/google/android/gms/internal/measurement/cf$a;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/cf$a;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 26
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1
.end method

.method private static a()Ljava/lang/Integer;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3
    :try_start_0
    const-string/jumbo v0, "android.os.Build$VERSION"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 4
    const-string/jumbo v2, "SDK_INT"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 5
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :goto_0
    return-object v0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v3, "Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    move-object v0, v1

    .line 9
    goto :goto_0
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/cf;->a:Lcom/google/android/gms/internal/measurement/ce;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/ce;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 2
    return-void
.end method
