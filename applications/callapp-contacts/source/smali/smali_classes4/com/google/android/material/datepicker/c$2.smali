.class final Lcom/google/android/material/datepicker/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/google/android/material/datepicker/c;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/c;J)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/google/android/material/datepicker/c$2;->b:Lcom/google/android/material/datepicker/c;

    iput-wide p2, p0, Lcom/google/android/material/datepicker/c$2;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 110
    iget-object v0, p0, Lcom/google/android/material/datepicker/c$2;->b:Lcom/google/android/material/datepicker/c;

    invoke-static {v0}, Lcom/google/android/material/datepicker/c;->a(Lcom/google/android/material/datepicker/c;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/c$2;->b:Lcom/google/android/material/datepicker/c;

    .line 111
    invoke-static {v1}, Lcom/google/android/material/datepicker/c;->c(Lcom/google/android/material/datepicker/c;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/google/android/material/datepicker/c$2;->a:J

    const/4 v5, 0x0

    .line 1107
    invoke-static {v3, v4, v5}, Lcom/google/android/material/datepicker/d;->a(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 111
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/google/android/material/datepicker/c$2;->b:Lcom/google/android/material/datepicker/c;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/c;->a()V

    return-void
.end method
