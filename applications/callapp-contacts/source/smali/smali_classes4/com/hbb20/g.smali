.class public final Lcom/hbb20/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field a:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

.field b:Landroid/text/Editable;

.field private c:Z

.field private d:Z

.field private e:Lcom/google/i18n/phonenumbers/a;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    .line 45
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hbb20/g;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 6

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/hbb20/g;->c:Z

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/hbb20/g;->b:Landroid/text/Editable;

    .line 34
    iput-boolean p1, p0, Lcom/hbb20/g;->h:Z

    if-eqz p2, :cond_1

    .line 57
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/g;->a:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .line 1065
    iput-object p2, p0, Lcom/hbb20/g;->f:Ljava/lang/String;

    .line 1066
    iput p3, p0, Lcom/hbb20/g;->g:I

    .line 1067
    invoke-virtual {v0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getAsYouTypeFormatter(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/a;

    move-result-object p2

    iput-object p2, p0, Lcom/hbb20/g;->e:Lcom/google/i18n/phonenumbers/a;

    .line 1068
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/a;->a()V

    .line 1069
    iget-object p2, p0, Lcom/hbb20/g;->b:Landroid/text/Editable;

    if-eqz p2, :cond_0

    const/4 p3, 0x1

    .line 1070
    iput-boolean p3, p0, Lcom/hbb20/g;->h:Z

    .line 1071
    invoke-static {p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1072
    iget-object v0, p0, Lcom/hbb20/g;->b:Landroid/text/Editable;

    const/4 v1, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 1073
    iput-boolean p1, p0, Lcom/hbb20/g;->h:Z

    .line 61
    :cond_0
    iput-boolean p4, p0, Lcom/hbb20/g;->i:Z

    return-void

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x1

    .line 220
    iput-boolean v0, p0, Lcom/hbb20/g;->d:Z

    .line 221
    iget-object v0, p0, Lcom/hbb20/g;->e:Lcom/google/i18n/phonenumbers/a;

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/a;->a()V

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;II)Z
    .locals 2

    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_1

    .line 226
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 227
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 13

    monitor-enter p0

    .line 102
    :try_start_0
    iget-boolean v0, p0, Lcom/hbb20/g;->d:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 104
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/hbb20/g;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 107
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/hbb20/g;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 109
    monitor-exit p0

    return-void

    .line 113
    :cond_2
    :try_start_2
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 114
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-ne v0, v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    const-string v4, ""

    .line 1182
    iget-object v5, p0, Lcom/hbb20/g;->e:Lcom/google/i18n/phonenumbers/a;

    invoke-virtual {v5}, Lcom/google/i18n/phonenumbers/a;->a()V

    .line 1185
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "+"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/hbb20/g;->g:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1187
    iget-boolean v6, p0, Lcom/hbb20/g;->i:Z

    const/16 v7, 0x30

    if-nez v6, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_4

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v6, v7, :cond_4

    goto :goto_2

    :cond_4
    move-object v6, p1

    goto :goto_3

    .line 1189
    :cond_5
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1190
    :goto_3
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_4
    if-ge v9, v8, :cond_8

    .line 1193
    invoke-interface {v6, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    .line 1194
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v12

    if-eqz v12, :cond_7

    if-eqz v10, :cond_6

    .line 1196
    iget-object v4, p0, Lcom/hbb20/g;->e:Lcom/google/i18n/phonenumbers/a;

    invoke-virtual {v4, v10}, Lcom/google/i18n/phonenumbers/a;->a(C)Ljava/lang/String;

    move-result-object v4

    :cond_6
    move v10, v11

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_8
    if-eqz v10, :cond_9

    .line 1202
    iget-object v4, p0, Lcom/hbb20/g;->e:Lcom/google/i18n/phonenumbers/a;

    invoke-virtual {v4, v10}, Lcom/google/i18n/phonenumbers/a;->a(C)Ljava/lang/String;

    move-result-object v4

    .line 1205
    :cond_9
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1206
    iget-boolean v8, p0, Lcom/hbb20/g;->i:Z

    if-nez v8, :cond_a

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v6, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v6, v7, :cond_d

    .line 1207
    :cond_a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_c

    .line 1208
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_b

    .line 1209
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 1211
    :cond_b
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_c
    const-string v4, ""

    .line 1216
    :cond_d
    :goto_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v4, ""

    :cond_e
    move-object v6, v4

    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_8

    :cond_f
    if-eqz v3, :cond_10

    .line 126
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_8

    :cond_10
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 131
    :goto_6
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v7

    if-ge v4, v7, :cond_12

    if-ge v4, v0, :cond_12

    .line 135
    invoke-interface {p1, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v7

    if-eqz v7, :cond_11

    add-int/lit8 v5, v5, 0x1

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_12
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 142
    :goto_7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v0, v7, :cond_15

    if-ne v4, v5, :cond_13

    goto :goto_8

    .line 147
    :cond_13
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v7

    if-eqz v7, :cond_14

    add-int/lit8 v4, v4, 0x1

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_15
    const/4 v0, 0x0

    :goto_8
    if-nez v3, :cond_16

    :goto_9
    add-int/lit8 v3, v0, -0x1

    if-lez v3, :cond_16

    .line 156
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_16

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_16
    if-eqz v6, :cond_17

    .line 164
    :try_start_3
    iput-boolean v1, p0, Lcom/hbb20/g;->c:Z

    const/4 v4, 0x0

    .line 165
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    move-object v3, p1

    invoke-interface/range {v3 .. v8}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 166
    iput-boolean v2, p0, Lcom/hbb20/g;->c:Z

    .line 167
    iput-object p1, p0, Lcom/hbb20/g;->b:Landroid/text/Editable;

    .line 168
    invoke-static {p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_a

    :catch_0
    move-exception p1

    .line 171
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 172
    :cond_17
    :goto_a
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 80
    iget-boolean p4, p0, Lcom/hbb20/g;->c:Z

    if-nez p4, :cond_1

    iget-boolean p4, p0, Lcom/hbb20/g;->d:Z

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    if-lez p3, :cond_1

    .line 84
    invoke-static {p1, p2, p3}, Lcom/hbb20/g;->a(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/hbb20/g;->h:Z

    if-nez p1, :cond_1

    .line 85
    invoke-direct {p0}, Lcom/hbb20/g;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 91
    iget-boolean p3, p0, Lcom/hbb20/g;->c:Z

    if-nez p3, :cond_1

    iget-boolean p3, p0, Lcom/hbb20/g;->d:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    if-lez p4, :cond_1

    .line 95
    invoke-static {p1, p2, p4}, Lcom/hbb20/g;->a(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 96
    invoke-direct {p0}, Lcom/hbb20/g;->a()V

    :cond_1
    :goto_0
    return-void
.end method
