.class public Lcom/google/i18n/phonenumbers/g;
.super Ljava/lang/Object;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/i18n/phonenumbers/g$c;,
        Lcom/google/i18n/phonenumbers/g$b;,
        Lcom/google/i18n/phonenumbers/g$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field static final b:Ljava/util/regex/Pattern;

.field static final c:Ljava/util/regex/Pattern;

.field static final d:Ljava/lang/String;

.field static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/logging/Logger;

.field private static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Ljava/util/regex/Pattern;

.field private static final o:Ljava/lang/String;

.field private static final p:Ljava/util/regex/Pattern;

.field private static final q:Ljava/util/regex/Pattern;

.field private static final r:Ljava/util/regex/Pattern;

.field private static final s:Ljava/util/regex/Pattern;

.field private static final t:Ljava/lang/String;

.field private static final u:Ljava/lang/String;

.field private static final v:Ljava/util/regex/Pattern;

.field private static final w:Ljava/util/regex/Pattern;

.field private static final x:Ljava/util/regex/Pattern;

.field private static final y:Ljava/util/regex/Pattern;

.field private static z:Lcom/google/i18n/phonenumbers/g;


# instance fields
.field private final A:Lcom/google/i18n/phonenumbers/e;

.field private final B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final C:Lcom/google/i18n/phonenumbers/a/a;

.field private final D:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final E:Lcom/google/i18n/phonenumbers/a/c;

.field private final F:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final G:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x39

    const/16 v7, 0x37

    const/16 v5, 0x36

    const/16 v4, 0x34

    const/16 v6, 0x2d

    .line 57
    const-class v0, Lcom/google/i18n/phonenumbers/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/g;->f:Ljava/util/logging/Logger;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/g;->g:Ljava/util/Map;

    .line 129
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 130
    const/16 v1, 0x56

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/google/i18n/phonenumbers/g;->h:Ljava/util/Set;

    .line 134
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 135
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 138
    const/16 v2, 0x3e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 140
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/g;->i:Ljava/util/Set;

    .line 144
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 145
    const/16 v0, 0x30

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const/16 v0, 0x31

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const/16 v0, 0x33

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const/16 v0, 0x35

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const/16 v0, 0x38

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    const/16 v2, 0x28

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 157
    const/16 v2, 0x41

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const/16 v2, 0x42

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const/16 v2, 0x43

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const/16 v2, 0x44

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x33

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const/16 v2, 0x45

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x33

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const/16 v2, 0x46

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x33

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const/16 v2, 0x47

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const/16 v2, 0x48

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const/16 v2, 0x49

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const/16 v2, 0x4a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x35

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const/16 v2, 0x4b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x35

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const/16 v2, 0x4c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x35

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const/16 v2, 0x4d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const/16 v2, 0x4e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const/16 v2, 0x4f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const/16 v2, 0x50

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const/16 v2, 0x51

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const/16 v2, 0x52

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const/16 v2, 0x53

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const/16 v2, 0x54

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x38

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const/16 v2, 0x55

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x38

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const/16 v2, 0x56

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x38

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const/16 v2, 0x57

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const/16 v2, 0x58

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const/16 v2, 0x59

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const/16 v2, 0x5a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/g;->k:Ljava/util/Map;

    .line 185
    new-instance v0, Ljava/util/HashMap;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 186
    sget-object v2, Lcom/google/i18n/phonenumbers/g;->k:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 187
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 188
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/g;->l:Ljava/util/Map;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 191
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 192
    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x2b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x2a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x23

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/g;->j:Ljava/util/Map;

    .line 197
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 199
    sget-object v0, Lcom/google/i18n/phonenumbers/g;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 200
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 205
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const v0, 0xff0d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const/16 v0, 0x2010

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const/16 v0, 0x2011

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const/16 v0, 0x2012

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const/16 v0, 0x2013

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const/16 v0, 0x2014

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const/16 v0, 0x2015

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const/16 v0, 0x2212

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const/16 v0, 0x2f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const v0, 0xff0f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const/16 v0, 0x3000

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const/16 v0, 0x2060

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const/16 v0, 0x2e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const v0, 0xff0e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/g;->m:Ljava/util/Map;

    .line 230
    const-string/jumbo v0, "[\\d]+(?:[~\u2053\u223c\uff5e][\\d]+)?"

    .line 231
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/g;->n:Ljava/util/regex/Pattern;

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/i18n/phonenumbers/g;->k:Ljava/util/Map;

    .line 245
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "[, \\[\\]]"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/i18n/phonenumbers/g;->k:Ljava/util/Map;

    .line 246
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "[, \\[\\]]"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/g;->o:Ljava/lang/String;

    .line 249
    const-string/jumbo v0, "[+\uff0b]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/g;->a:Ljava/util/regex/Pattern;

    .line 250
    const-string/jumbo v0, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/g;->p:Ljava/util/regex/Pattern;

    .line 251
    const-string/jumbo v0, "(\\p{Nd})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/g;->q:Ljava/util/regex/Pattern;

    .line 260
    const-string/jumbo v0, "[+\uff0b\\p{Nd}]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/g;->r:Ljava/util/regex/Pattern;

    .line 268
    const-string/jumbo v0, "[\\\\/] *x"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/g;->b:Ljava/util/regex/Pattern;

    .line 274
    const-string/jumbo v0, "[[\\P{N}&&\\P{L}]&&[^#]]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/g;->c:Ljava/util/regex/Pattern;

    .line 278
    const-string/jumbo v0, "(?:.*?[A-Za-z]){3}.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/g;->s:Ljava/util/regex/Pattern;

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\\p{Nd}{2}|[+\uff0b]*+(?:[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*]*\\p{Nd}){3,}[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/i18n/phonenumbers/g;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\\p{Nd}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/g;->t:Ljava/lang/String;

    .line 317
    const-string/jumbo v0, "x\uff58#\uff03~\uff5e"

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ",;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 323
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/i18n/phonenumbers/g;->u:Ljava/lang/String;

    .line 324
    invoke-static {v0}, Lcom/google/i18n/phonenumbers/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/g;->d:Ljava/lang/String;

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(?:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/i18n/phonenumbers/g;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x42

    .line 352
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/g;->v:Ljava/util/regex/Pattern;

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/i18n/phonenumbers/g;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(?:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/i18n/phonenumbers/g;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x42

    .line 357
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/g;->w:Ljava/util/regex/Pattern;

    .line 359
    const-string/jumbo v0, "(\\D+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/g;->e:Ljava/util/regex/Pattern;

    .line 365
    const-string/jumbo v0, "(\\$\\d)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/g;->x:Ljava/util/regex/Pattern;

    .line 375
    const-string/jumbo v0, "\\(?\\$1\\)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/g;->y:Ljava/util/regex/Pattern;

    .line 377
    const/4 v0, 0x0

    sput-object v0, Lcom/google/i18n/phonenumbers/g;->z:Lcom/google/i18n/phonenumbers/g;

    return-void
.end method

.method constructor <init>(Lcom/google/i18n/phonenumbers/e;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/i18n/phonenumbers/e;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    invoke-static {}, Lcom/google/i18n/phonenumbers/a/b;->a()Lcom/google/i18n/phonenumbers/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/g;->C:Lcom/google/i18n/phonenumbers/a/a;

    .line 591
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x23

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/g;->D:Ljava/util/Set;

    .line 596
    new-instance v0, Lcom/google/i18n/phonenumbers/a/c;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/google/i18n/phonenumbers/a/c;-><init>(I)V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/g;->E:Lcom/google/i18n/phonenumbers/a/c;

    .line 601
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x140

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/g;->F:Ljava/util/Set;

    .line 605
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/g;->G:Ljava/util/Set;

    .line 613
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/g;->A:Lcom/google/i18n/phonenumbers/e;

    .line 614
    iput-object p2, p0, Lcom/google/i18n/phonenumbers/g;->B:Ljava/util/Map;

    .line 615
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 616
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 619
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_0

    const-string/jumbo v3, "001"

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 621
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/g;->G:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/g;->F:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 630
    :cond_1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/g;->F:Ljava/util/Set;

    const-string/jumbo v1, "001"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 631
    sget-object v0, Lcom/google/i18n/phonenumbers/g;->f:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v2, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 634
    :cond_2
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/g;->D:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 635
    return-void
.end method

.method private a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/h$b;)Lcom/google/i18n/phonenumbers/g$c;
    .locals 1

    .prologue
    .line 2490
    sget-object v0, Lcom/google/i18n/phonenumbers/g$b;->l:Lcom/google/i18n/phonenumbers/g$b;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/i18n/phonenumbers/g;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/h$b;Lcom/google/i18n/phonenumbers/g$b;)Lcom/google/i18n/phonenumbers/g$c;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/h$b;Lcom/google/i18n/phonenumbers/g$b;)Lcom/google/i18n/phonenumbers/g$c;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2499
    invoke-virtual {p0, p2, p3}, Lcom/google/i18n/phonenumbers/g;->a(Lcom/google/i18n/phonenumbers/h$b;Lcom/google/i18n/phonenumbers/g$b;)Lcom/google/i18n/phonenumbers/h$d;

    move-result-object v1

    .line 2506
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/h$d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2507
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/h$b;->a()Lcom/google/i18n/phonenumbers/h$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/h$d;->b()Ljava/util/List;

    move-result-object v0

    .line 2509
    :goto_0
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/h$d;->d()Ljava/util/List;

    move-result-object v1

    .line 2511
    sget-object v2, Lcom/google/i18n/phonenumbers/g$b;->c:Lcom/google/i18n/phonenumbers/g$b;

    if-ne p3, v2, :cond_a

    .line 2512
    sget-object v2, Lcom/google/i18n/phonenumbers/g$b;->a:Lcom/google/i18n/phonenumbers/g$b;

    invoke-virtual {p0, p2, v2}, Lcom/google/i18n/phonenumbers/g;->a(Lcom/google/i18n/phonenumbers/h$b;Lcom/google/i18n/phonenumbers/g$b;)Lcom/google/i18n/phonenumbers/h$d;

    move-result-object v2

    invoke-static {v2}, Lcom/google/i18n/phonenumbers/g;->a(Lcom/google/i18n/phonenumbers/h$d;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2515
    sget-object v0, Lcom/google/i18n/phonenumbers/g$b;->b:Lcom/google/i18n/phonenumbers/g$b;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/i18n/phonenumbers/g;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/h$b;Lcom/google/i18n/phonenumbers/g$b;)Lcom/google/i18n/phonenumbers/g$c;

    move-result-object v0

    .line 2564
    :goto_1
    return-object v0

    .line 2507
    :cond_0
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/h$d;->b()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 2517
    :cond_1
    sget-object v2, Lcom/google/i18n/phonenumbers/g$b;->b:Lcom/google/i18n/phonenumbers/g$b;

    invoke-virtual {p0, p2, v2}, Lcom/google/i18n/phonenumbers/g;->a(Lcom/google/i18n/phonenumbers/h$b;Lcom/google/i18n/phonenumbers/g$b;)Lcom/google/i18n/phonenumbers/h$d;

    move-result-object v3

    .line 2518
    invoke-static {v3}, Lcom/google/i18n/phonenumbers/g;->a(Lcom/google/i18n/phonenumbers/h$d;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2520
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2524
    invoke-virtual {v3}, Lcom/google/i18n/phonenumbers/h$d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 2525
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/h$b;->a()Lcom/google/i18n/phonenumbers/h$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/h$d;->b()Ljava/util/List;

    move-result-object v0

    .line 2524
    :goto_2
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2529
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2531
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2532
    invoke-virtual {v3}, Lcom/google/i18n/phonenumbers/h$d;->d()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 2544
    :goto_3
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    .line 2545
    sget-object v0, Lcom/google/i18n/phonenumbers/g$c;->e:Lcom/google/i18n/phonenumbers/g$c;

    goto :goto_1

    .line 2526
    :cond_2
    invoke-virtual {v3}, Lcom/google/i18n/phonenumbers/h$d;->b()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 2534
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2535
    invoke-virtual {v3}, Lcom/google/i18n/phonenumbers/h$d;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2536
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object v1, v0

    goto :goto_3

    .line 2548
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 2551
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2552
    sget-object v0, Lcom/google/i18n/phonenumbers/g$c;->b:Lcom/google/i18n/phonenumbers/g$c;

    goto :goto_1

    .line 2555
    :cond_5
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2556
    if-ne v0, v3, :cond_6

    .line 2557
    sget-object v0, Lcom/google/i18n/phonenumbers/g$c;->a:Lcom/google/i18n/phonenumbers/g$c;

    goto :goto_1

    .line 2558
    :cond_6
    if-le v0, v3, :cond_7

    .line 2559
    sget-object v0, Lcom/google/i18n/phonenumbers/g$c;->d:Lcom/google/i18n/phonenumbers/g$c;

    goto/16 :goto_1

    .line 2560
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v3, :cond_8

    .line 2561
    sget-object v0, Lcom/google/i18n/phonenumbers/g$c;->f:Lcom/google/i18n/phonenumbers/g$c;

    goto/16 :goto_1

    .line 2564
    :cond_8
    const/4 v0, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/i18n/phonenumbers/g$c;->a:Lcom/google/i18n/phonenumbers/g$c;

    goto/16 :goto_1

    :cond_9
    sget-object v0, Lcom/google/i18n/phonenumbers/g$c;->e:Lcom/google/i18n/phonenumbers/g$c;

    goto/16 :goto_1

    :cond_a
    move-object v2, v0

    goto :goto_3
.end method

.method public static declared-synchronized a()Lcom/google/i18n/phonenumbers/g;
    .locals 2

    .prologue
    .line 1076
    const-class v1, Lcom/google/i18n/phonenumbers/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/i18n/phonenumbers/g;->z:Lcom/google/i18n/phonenumbers/g;

    if-nez v0, :cond_0

    .line 1077
    sget-object v0, Lcom/google/i18n/phonenumbers/d;->a:Lcom/google/i18n/phonenumbers/c;

    invoke-static {v0}, Lcom/google/i18n/phonenumbers/g;->a(Lcom/google/i18n/phonenumbers/c;)Lcom/google/i18n/phonenumbers/g;

    move-result-object v0

    invoke-static {v0}, Lcom/google/i18n/phonenumbers/g;->a(Lcom/google/i18n/phonenumbers/g;)V

    .line 1079
    :cond_0
    sget-object v0, Lcom/google/i18n/phonenumbers/g;->z:Lcom/google/i18n/phonenumbers/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1076
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/google/i18n/phonenumbers/c;)Lcom/google/i18n/phonenumbers/g;
    .locals 2

    .prologue
    .line 1095
    if-nez p0, :cond_0

    .line 1096
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "metadataLoader could not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1098
    :cond_0
    new-instance v0, Lcom/google/i18n/phonenumbers/f;

    invoke-direct {v0, p0}, Lcom/google/i18n/phonenumbers/f;-><init>(Lcom/google/i18n/phonenumbers/c;)V

    invoke-static {v0}, Lcom/google/i18n/phonenumbers/g;->a(Lcom/google/i18n/phonenumbers/e;)Lcom/google/i18n/phonenumbers/g;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/google/i18n/phonenumbers/e;)Lcom/google/i18n/phonenumbers/g;
    .locals 2

    .prologue
    .line 1114
    if-nez p0, :cond_0

    .line 1115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "metadataSource could not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1117
    :cond_0
    new-instance v0, Lcom/google/i18n/phonenumbers/g;

    .line 1118
    invoke-static {}, Lcom/google/i18n/phonenumbers/b;->a()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/i18n/phonenumbers/g;-><init>(Lcom/google/i18n/phonenumbers/e;Ljava/util/Map;)V

    .line 1117
    return-object v0
.end method

.method private a(ILjava/lang/String;)Lcom/google/i18n/phonenumbers/h$b;
    .locals 1

    .prologue
    .line 1329
    const-string/jumbo v0, "001"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1330
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/g;->a(I)Lcom/google/i18n/phonenumbers/h$b;

    move-result-object v0

    .line 1329
    :goto_0
    return-object v0

    .line 1331
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/i18n/phonenumbers/g;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/h$b;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 653
    sget-object v0, Lcom/google/i18n/phonenumbers/g;->r:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 654
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 655
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 657
    sget-object v1, Lcom/google/i18n/phonenumbers/g;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 658
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 659
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-interface {v0, v3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 662
    :cond_0
    sget-object v1, Lcom/google/i18n/phonenumbers/g;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 663
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 664
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-interface {v0, v3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 668
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static a(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 930
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 931
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 932
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 933
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 934
    if-eqz v0, :cond_1

    .line 935
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 931
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 936
    :cond_1
    if-nez p2, :cond_0

    .line 937
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 941
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/h$a;Lcom/google/i18n/phonenumbers/g$a;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1898
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/h$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 1899
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/g;->E:Lcom/google/i18n/phonenumbers/a/c;

    .line 1900
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/h$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/i18n/phonenumbers/a/c;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1901
    const-string/jumbo v2, ""

    .line 1902
    sget-object v2, Lcom/google/i18n/phonenumbers/g$a;->c:Lcom/google/i18n/phonenumbers/g$a;

    if-ne p3, v2, :cond_2

    if-eqz p4, :cond_2

    .line 1903
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 1904
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/h$a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 1906
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/h$a;->e()Ljava/lang/String;

    move-result-object v2

    .line 1907
    const-string/jumbo v3, "$CC"

    invoke-virtual {v2, v3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1910
    sget-object v3, Lcom/google/i18n/phonenumbers/g;->x:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1911
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1912
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1926
    :goto_0
    sget-object v1, Lcom/google/i18n/phonenumbers/g$a;->d:Lcom/google/i18n/phonenumbers/g$a;

    if-ne p3, v1, :cond_1

    .line 1928
    sget-object v1, Lcom/google/i18n/phonenumbers/g;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1929
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1930
    const-string/jumbo v0, ""

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1933
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1935
    :cond_1
    return-object v0

    .line 1915
    :cond_2
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/h$a;->d()Ljava/lang/String;

    move-result-object v2

    .line 1916
    sget-object v3, Lcom/google/i18n/phonenumbers/g$a;->c:Lcom/google/i18n/phonenumbers/g$a;

    if-ne p3, v3, :cond_3

    if-eqz v2, :cond_3

    .line 1918
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 1919
    sget-object v3, Lcom/google/i18n/phonenumbers/g;->x:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1921
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1923
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/h$b;Lcom/google/i18n/phonenumbers/g$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1845
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/i18n/phonenumbers/g;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/h$b;Lcom/google/i18n/phonenumbers/g$a;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/h$b;Lcom/google/i18n/phonenumbers/g$a;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1856
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/h$b;->t()Ljava/util/List;

    move-result-object v0

    .line 1860
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/i18n/phonenumbers/g$a;->c:Lcom/google/i18n/phonenumbers/g$a;

    if-ne p3, v0, :cond_1

    .line 1861
    :cond_0
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/h$b;->r()Ljava/util/List;

    move-result-object v0

    .line 1863
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/google/i18n/phonenumbers/g;->a(Ljava/util/List;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/h$a;

    move-result-object v0

    .line 1864
    if-nez v0, :cond_2

    :goto_1
    return-object p1

    .line 1862
    :cond_1
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/h$b;->t()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1866
    :cond_2
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/google/i18n/phonenumbers/g;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/h$a;Lcom/google/i18n/phonenumbers/g$a;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method static a(Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    .line 729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 730
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 731
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 732
    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 733
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 734
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 730
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 735
    :cond_1
    if-eqz p1, :cond_0

    .line 736
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 739
    :cond_2
    return-object v1
.end method

.method static a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 708
    sget-object v0, Lcom/google/i18n/phonenumbers/g;->s:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 709
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sget-object v1, Lcom/google/i18n/phonenumbers/g;->l:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/google/i18n/phonenumbers/g;->a(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v0, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    :goto_0
    return-object p0

    .line 712
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-static {p0}, Lcom/google/i18n/phonenumbers/g;->c(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v0, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private a(ILcom/google/i18n/phonenumbers/g$a;Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    const/16 v3, 0x2b

    const/4 v2, 0x0

    .line 1826
    sget-object v0, Lcom/google/i18n/phonenumbers/g$1;->b:[I

    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/g$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1839
    :goto_0
    return-void

    .line 1828
    :pswitch_0
    invoke-virtual {p3, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1831
    :pswitch_1
    const-string/jumbo v0, " "

    invoke-virtual {p3, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1834
    :pswitch_2
    const-string/jumbo v0, "-"

    invoke-virtual {p3, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "tel:"

    .line 1835
    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1826
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static declared-synchronized a(Lcom/google/i18n/phonenumbers/g;)V
    .locals 2

    .prologue
    .line 950
    const-class v0, Lcom/google/i18n/phonenumbers/g;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/google/i18n/phonenumbers/g;->z:Lcom/google/i18n/phonenumbers/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 951
    monitor-exit v0

    return-void

    .line 950
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Lcom/google/i18n/phonenumbers/i$a;Lcom/google/i18n/phonenumbers/h$b;Lcom/google/i18n/phonenumbers/g$a;Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 2104
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/i$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/i$a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2105
    sget-object v0, Lcom/google/i18n/phonenumbers/g$a;->d:Lcom/google/i18n/phonenumbers/g$a;

    if-ne p3, v0, :cond_1

    .line 2106
    const-string/jumbo v0, ";ext="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/i$a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2115
    :cond_0
    :goto_0
    return-void

    .line 2108
    :cond_1
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/h$b;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2109
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/h$b;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/i$a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2111
    :cond_2
    const-string/jumbo v0, " ext. "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/i$a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/i$a;)V
    .locals 4

    .prologue
    const/16 v3, 0x30

    const/4 v1, 0x1

    .line 3111
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_1

    .line 3112
    invoke-virtual {p1, v1}, Lcom/google/i18n/phonenumbers/i$a;->a(Z)Lcom/google/i18n/phonenumbers/i$a;

    move v0, v1

    .line 3116
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 3117
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 3118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3120
    :cond_0
    if-eq v0, v1, :cond_1

    .line 3121
    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/i$a;->b(I)Lcom/google/i18n/phonenumbers/i$a;

    .line 3124
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/google/i18n/phonenumbers/i$a;)V
    .locals 10

    .prologue
    .line 3138
    if-nez p1, :cond_0

    .line 3139
    new-instance v0, Lcom/google/i18n/phonenumbers/NumberParseException;

    sget-object v1, Lcom/google/i18n/phonenumbers/NumberParseException$a;->b:Lcom/google/i18n/phonenumbers/NumberParseException$a;

    const-string/jumbo v2, "The phone number supplied was null."

    invoke-direct {v0, v1, v2}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$a;Ljava/lang/String;)V

    throw v0

    .line 3141
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0xfa

    if-le v0, v1, :cond_1

    .line 3142
    new-instance v0, Lcom/google/i18n/phonenumbers/NumberParseException;

    sget-object v1, Lcom/google/i18n/phonenumbers/NumberParseException$a;->e:Lcom/google/i18n/phonenumbers/NumberParseException$a;

    const-string/jumbo v2, "The string supplied was too long to parse."

    invoke-direct {v0, v1, v2}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$a;Ljava/lang/String;)V

    throw v0

    .line 3146
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3147
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3148
    invoke-direct {p0, v0, v1}, Lcom/google/i18n/phonenumbers/g;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 3150
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/g;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3151
    new-instance v0, Lcom/google/i18n/phonenumbers/NumberParseException;

    sget-object v1, Lcom/google/i18n/phonenumbers/NumberParseException$a;->b:Lcom/google/i18n/phonenumbers/NumberParseException$a;

    const-string/jumbo v2, "The string supplied did not seem to be a phone number."

    invoke-direct {v0, v1, v2}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$a;Ljava/lang/String;)V

    throw v0

    .line 3157
    :cond_2
    if-eqz p4, :cond_3

    invoke-direct {p0, v1, p2}, Lcom/google/i18n/phonenumbers/g;->b(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3158
    new-instance v0, Lcom/google/i18n/phonenumbers/NumberParseException;

    sget-object v1, Lcom/google/i18n/phonenumbers/NumberParseException$a;->a:Lcom/google/i18n/phonenumbers/NumberParseException$a;

    const-string/jumbo v2, "Missing or invalid default region."

    invoke-direct {v0, v1, v2}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$a;Ljava/lang/String;)V

    throw v0

    .line 3162
    :cond_3
    if-eqz p3, :cond_4

    .line 3163
    invoke-virtual {p5, v0}, Lcom/google/i18n/phonenumbers/i$a;->b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$a;

    .line 3167
    :cond_4
    invoke-virtual {p0, v1}, Lcom/google/i18n/phonenumbers/g;->b(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 3168
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 3169
    invoke-virtual {p5, v0}, Lcom/google/i18n/phonenumbers/i$a;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$a;

    .line 3172
    :cond_5
    invoke-virtual {p0, p2}, Lcom/google/i18n/phonenumbers/g;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/h$b;

    move-result-object v2

    .line 3175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, p0

    move v4, p3

    move-object v5, p5

    .line 3181
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/google/i18n/phonenumbers/g;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/h$b;Ljava/lang/StringBuilder;ZLcom/google/i18n/phonenumbers/i$a;)I
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3199
    :cond_6
    if-eqz v0, :cond_9

    .line 3200
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/g;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 3201
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 3203
    invoke-direct {p0, v0, v1}, Lcom/google/i18n/phonenumbers/g;->a(ILjava/lang/String;)Lcom/google/i18n/phonenumbers/h$b;

    move-result-object v2

    .line 3216
    :cond_7
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_b

    .line 3217
    new-instance v0, Lcom/google/i18n/phonenumbers/NumberParseException;

    sget-object v1, Lcom/google/i18n/phonenumbers/NumberParseException$a;->d:Lcom/google/i18n/phonenumbers/NumberParseException$a;

    const-string/jumbo v2, "The string supplied is too short to be a phone number."

    invoke-direct {v0, v1, v2}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$a;Ljava/lang/String;)V

    throw v0

    .line 3183
    :catch_0
    move-exception v0

    .line 3184
    sget-object v4, Lcom/google/i18n/phonenumbers/g;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 3185
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/NumberParseException;->a()Lcom/google/i18n/phonenumbers/NumberParseException$a;

    move-result-object v5

    sget-object v6, Lcom/google/i18n/phonenumbers/NumberParseException$a;->a:Lcom/google/i18n/phonenumbers/NumberParseException$a;

    if-ne v5, v6, :cond_8

    .line 3186
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3188
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v4, p0

    move-object v6, v2

    move-object v7, v3

    move v8, p3

    move-object v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/google/i18n/phonenumbers/g;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/h$b;Ljava/lang/StringBuilder;ZLcom/google/i18n/phonenumbers/i$a;)I

    move-result v0

    .line 3191
    if-nez v0, :cond_6

    .line 3192
    new-instance v0, Lcom/google/i18n/phonenumbers/NumberParseException;

    sget-object v1, Lcom/google/i18n/phonenumbers/NumberParseException$a;->a:Lcom/google/i18n/phonenumbers/NumberParseException$a;

    const-string/jumbo v2, "Could not interpret numbers after plus-sign."

    invoke-direct {v0, v1, v2}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$a;Ljava/lang/String;)V

    throw v0

    .line 3196
    :cond_8
    new-instance v1, Lcom/google/i18n/phonenumbers/NumberParseException;

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/NumberParseException;->a()Lcom/google/i18n/phonenumbers/NumberParseException$a;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/NumberParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$a;Ljava/lang/String;)V

    throw v1

    .line 3208
    :cond_9
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/g;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3209
    if-eqz p2, :cond_a

    .line 3210
    invoke-virtual {v2}, Lcom/google/i18n/phonenumbers/h$b;->l()I

    move-result v0

    .line 3211
    invoke-virtual {p5, v0}, Lcom/google/i18n/phonenumbers/i$a;->a(I)Lcom/google/i18n/phonenumbers/i$a;

    goto :goto_0

    .line 3212
    :cond_a
    if-eqz p3, :cond_7

    .line 3213
    invoke-virtual {p5}, Lcom/google/i18n/phonenumbers/i$a;->m()Lcom/google/i18n/phonenumbers/i$a;

    goto :goto_0

    .line 3220
    :cond_b
    if-eqz v2, :cond_d

    .line 3221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3223
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/i18n/phonenumbers/g;->a(Ljava/lang/StringBuilder;Lcom/google/i18n/phonenumbers/h$b;Ljava/lang/StringBuilder;)Z

    .line 3227
    invoke-direct {p0, v0, v2}, Lcom/google/i18n/phonenumbers/g;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/h$b;)Lcom/google/i18n/phonenumbers/g$c;

    move-result-object v2

    .line 3228
    sget-object v4, Lcom/google/i18n/phonenumbers/g$c;->d:Lcom/google/i18n/phonenumbers/g$c;

    if-eq v2, v4, :cond_d

    sget-object v4, Lcom/google/i18n/phonenumbers/g$c;->b:Lcom/google/i18n/phonenumbers/g$c;

    if-eq v2, v4, :cond_d

    sget-object v4, Lcom/google/i18n/phonenumbers/g$c;->e:Lcom/google/i18n/phonenumbers/g$c;

    if-eq v2, v4, :cond_d

    .line 3232
    if-eqz p3, :cond_c

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_c

    .line 3233
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/google/i18n/phonenumbers/i$a;->c(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$a;

    :cond_c
    move-object v3, v0

    .line 3237
    :cond_d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 3238
    const/4 v1, 0x2

    if-ge v0, v1, :cond_e

    .line 3239
    new-instance v0, Lcom/google/i18n/phonenumbers/NumberParseException;

    sget-object v1, Lcom/google/i18n/phonenumbers/NumberParseException$a;->d:Lcom/google/i18n/phonenumbers/NumberParseException$a;

    const-string/jumbo v2, "The string supplied is too short to be a phone number."

    invoke-direct {v0, v1, v2}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$a;Ljava/lang/String;)V

    throw v0

    .line 3242
    :cond_e
    const/16 v1, 0x11

    if-le v0, v1, :cond_f

    .line 3243
    new-instance v0, Lcom/google/i18n/phonenumbers/NumberParseException;

    sget-object v1, Lcom/google/i18n/phonenumbers/NumberParseException$a;->e:Lcom/google/i18n/phonenumbers/NumberParseException$a;

    const-string/jumbo v2, "The string supplied is too long to be a phone number."

    invoke-direct {v0, v1, v2}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$a;Ljava/lang/String;)V

    throw v0

    .line 3246
    :cond_f
    invoke-static {v3, p5}, Lcom/google/i18n/phonenumbers/g;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/i$a;)V

    .line 3247
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Lcom/google/i18n/phonenumbers/i$a;->a(J)Lcom/google/i18n/phonenumbers/i$a;

    .line 3248
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    .line 3255
    const-string/jumbo v0, ";phone-context="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 3256
    if-ltz v1, :cond_4

    .line 3257
    const-string/jumbo v0, ";phone-context="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    .line 3260
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 3261
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_0

    .line 3265
    const/16 v2, 0x3b

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 3266
    if-lez v2, :cond_2

    .line 3267
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3277
    :cond_0
    :goto_0
    const-string/jumbo v0, "tel:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 3278
    if-ltz v0, :cond_3

    const-string/jumbo v2, "tel:"

    .line 3279
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 3280
    :goto_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3289
    :goto_2
    const-string/jumbo v0, ";isub="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 3290
    if-lez v0, :cond_1

    .line 3291
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3297
    :cond_1
    return-void

    .line 3269
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3279
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 3284
    :cond_4
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/g;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private static a(Lcom/google/i18n/phonenumbers/h$d;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 992
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/h$d;->c()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/h$d;->a(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private a(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2828
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 2829
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2830
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 2833
    sget-object v3, Lcom/google/i18n/phonenumbers/g;->q:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 2834
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2835
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/i18n/phonenumbers/g;->c(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 2836
    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2843
    :cond_0
    :goto_0
    return v0

    .line 2840
    :cond_1
    invoke-virtual {p2, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v0, v1

    .line 2841
    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ";ext=(\\p{Nd}{1,7})|[ \u00a0\\t,]*(?:e?xt(?:ensi(?:o\u0301?|\u00f3))?n?|\uff45?\uff58\uff54\uff4e?|\u0434\u043e\u0431|["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]|int|anexo|\uff49\uff4e\uff54)[:\\.\uff0e]?[ \u00a0\\t,-]*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(\\p{Nd}{1,7})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#?|[- ]+("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\\p{Nd}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{1,5})#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/lang/CharSequence;)Z
    .locals 2

    .prologue
    .line 684
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 685
    const/4 v0, 0x0

    .line 688
    :goto_0
    return v0

    .line 687
    :cond_0
    sget-object v0, Lcom/google/i18n/phonenumbers/g;->w:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 688
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method private b(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2975
    invoke-direct {p0, p2}, Lcom/google/i18n/phonenumbers/g;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2977
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/i18n/phonenumbers/g;->a:Ljava/util/regex/Pattern;

    .line 2978
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2979
    :cond_0
    const/4 v0, 0x0

    .line 2982
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 725
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/i18n/phonenumbers/g;->a(Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(I)Z
    .locals 2

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/g;->B:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1154
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/g;->F:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/h$b;Ljava/lang/StringBuilder;ZLcom/google/i18n/phonenumbers/i$a;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2759
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 2820
    :goto_0
    return v0

    .line 2762
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2764
    const-string/jumbo v0, "NonMatch"

    .line 2765
    if-eqz p2, :cond_1

    .line 2766
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/h$b;->m()Ljava/lang/String;

    move-result-object v0

    .line 2770
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/google/i18n/phonenumbers/g;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$a$a;

    move-result-object v0

    .line 2771
    if-eqz p4, :cond_2

    .line 2772
    invoke-virtual {p5, v0}, Lcom/google/i18n/phonenumbers/i$a;->a(Lcom/google/i18n/phonenumbers/i$a$a;)Lcom/google/i18n/phonenumbers/i$a;

    .line 2774
    :cond_2
    sget-object v3, Lcom/google/i18n/phonenumbers/i$a$a;->d:Lcom/google/i18n/phonenumbers/i$a$a;

    if-eq v0, v3, :cond_5

    .line 2775
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_3

    .line 2776
    new-instance v0, Lcom/google/i18n/phonenumbers/NumberParseException;

    sget-object v1, Lcom/google/i18n/phonenumbers/NumberParseException$a;->c:Lcom/google/i18n/phonenumbers/NumberParseException$a;

    const-string/jumbo v2, "Phone number had an IDD, but after this was not long enough to be a viable phone number."

    invoke-direct {v0, v1, v2}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$a;Ljava/lang/String;)V

    throw v0

    .line 2780
    :cond_3
    invoke-virtual {p0, v2, p3}, Lcom/google/i18n/phonenumbers/g;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result v0

    .line 2781
    if-eqz v0, :cond_4

    .line 2782
    invoke-virtual {p5, v0}, Lcom/google/i18n/phonenumbers/i$a;->a(I)Lcom/google/i18n/phonenumbers/i$a;

    goto :goto_0

    .line 2788
    :cond_4
    new-instance v0, Lcom/google/i18n/phonenumbers/NumberParseException;

    sget-object v1, Lcom/google/i18n/phonenumbers/NumberParseException$a;->a:Lcom/google/i18n/phonenumbers/NumberParseException$a;

    const-string/jumbo v2, "Country calling code supplied was not recognised."

    invoke-direct {v0, v1, v2}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$a;Ljava/lang/String;)V

    throw v0

    .line 2790
    :cond_5
    if-eqz p2, :cond_9

    .line 2794
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/h$b;->l()I

    move-result v0

    .line 2795
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 2796
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2797
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2798
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2799
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2800
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/h$b;->a()Lcom/google/i18n/phonenumbers/h$d;

    move-result-object v3

    .line 2801
    const/4 v4, 0x0

    invoke-virtual {p0, v5, p2, v4}, Lcom/google/i18n/phonenumbers/g;->a(Ljava/lang/StringBuilder;Lcom/google/i18n/phonenumbers/h$b;Ljava/lang/StringBuilder;)Z

    .line 2806
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/g;->C:Lcom/google/i18n/phonenumbers/a/a;

    invoke-interface {v4, v2, v3, v1}, Lcom/google/i18n/phonenumbers/a/a;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/h$d;Z)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/g;->C:Lcom/google/i18n/phonenumbers/a/a;

    .line 2807
    invoke-interface {v4, v5, v3, v1}, Lcom/google/i18n/phonenumbers/a/a;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/h$d;Z)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2808
    :cond_6
    invoke-direct {p0, v2, p2}, Lcom/google/i18n/phonenumbers/g;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/h$b;)Lcom/google/i18n/phonenumbers/g$c;

    move-result-object v2

    sget-object v3, Lcom/google/i18n/phonenumbers/g$c;->f:Lcom/google/i18n/phonenumbers/g$c;

    if-ne v2, v3, :cond_9

    .line 2809
    :cond_7
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2810
    if-eqz p4, :cond_8

    .line 2811
    sget-object v1, Lcom/google/i18n/phonenumbers/i$a$a;->c:Lcom/google/i18n/phonenumbers/i$a$a;

    invoke-virtual {p5, v1}, Lcom/google/i18n/phonenumbers/i$a;->a(Lcom/google/i18n/phonenumbers/i$a$a;)Lcom/google/i18n/phonenumbers/i$a;

    .line 2813
    :cond_8
    invoke-virtual {p5, v0}, Lcom/google/i18n/phonenumbers/i$a;->a(I)Lcom/google/i18n/phonenumbers/i$a;

    goto/16 :goto_0

    .line 2819
    :cond_9
    invoke-virtual {p5, v1}, Lcom/google/i18n/phonenumbers/i$a;->a(I)Lcom/google/i18n/phonenumbers/i$a;

    move v0, v1

    .line 2820
    goto/16 :goto_0
.end method

.method a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2707
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v1

    .line 2720
    :goto_0
    return v0

    .line 2712
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 2713
    const/4 v0, 0x1

    move v2, v0

    :goto_1
    const/4 v0, 0x3

    if-gt v2, v0, :cond_3

    if-gt v2, v3, :cond_3

    .line 2714
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2715
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/g;->B:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2716
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2713
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move v0, v1

    .line 2720
    goto :goto_0
.end method

.method a(Ljava/util/List;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/h$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/i18n/phonenumbers/h$a;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/i18n/phonenumbers/h$a;"
        }
    .end annotation

    .prologue
    .line 1871
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/h$a;

    .line 1872
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/h$a;->c()I

    move-result v2

    .line 1873
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/g;->E:Lcom/google/i18n/phonenumbers/a/c;

    add-int/lit8 v2, v2, -0x1

    .line 1875
    invoke-virtual {v0, v2}, Lcom/google/i18n/phonenumbers/h$a;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 1873
    invoke-virtual {v3, v2}, Lcom/google/i18n/phonenumbers/a/c;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1875
    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1876
    :cond_1
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/g;->E:Lcom/google/i18n/phonenumbers/a/c;

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/h$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/i18n/phonenumbers/a/c;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1877
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1882
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(I)Lcom/google/i18n/phonenumbers/h$b;
    .locals 2

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/g;->B:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2222
    const/4 v0, 0x0

    .line 2224
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/g;->A:Lcom/google/i18n/phonenumbers/e;

    invoke-interface {v0, p1}, Lcom/google/i18n/phonenumbers/e;->a(I)Lcom/google/i18n/phonenumbers/h$b;

    move-result-object v0

    goto :goto_0
.end method

.method a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/h$b;
    .locals 1

    .prologue
    .line 2214
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/g;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2215
    const/4 v0, 0x0

    .line 2217
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/g;->A:Lcom/google/i18n/phonenumbers/e;

    invoke-interface {v0, p1}, Lcom/google/i18n/phonenumbers/e;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/h$b;

    move-result-object v0

    goto :goto_0
.end method

.method a(Lcom/google/i18n/phonenumbers/h$b;Lcom/google/i18n/phonenumbers/g$b;)Lcom/google/i18n/phonenumbers/h$d;
    .locals 2

    .prologue
    .line 2118
    sget-object v0, Lcom/google/i18n/phonenumbers/g$1;->c:[I

    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/g$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2141
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/h$b;->a()Lcom/google/i18n/phonenumbers/h$d;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2120
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/h$b;->e()Lcom/google/i18n/phonenumbers/h$d;

    move-result-object v0

    goto :goto_0

    .line 2122
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/h$b;->d()Lcom/google/i18n/phonenumbers/h$d;

    move-result-object v0

    goto :goto_0

    .line 2124
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/h$b;->c()Lcom/google/i18n/phonenumbers/h$d;

    move-result-object v0

    goto :goto_0

    .line 2127
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/h$b;->b()Lcom/google/i18n/phonenumbers/h$d;

    move-result-object v0

    goto :goto_0

    .line 2129
    :pswitch_4
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/h$b;->f()Lcom/google/i18n/phonenumbers/h$d;

    move-result-object v0

    goto :goto_0

    .line 2131
    :pswitch_5
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/h$b;->h()Lcom/google/i18n/phonenumbers/h$d;

    move-result-object v0

    goto :goto_0

    .line 2133
    :pswitch_6
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/h$b;->g()Lcom/google/i18n/phonenumbers/h$d;

    move-result-object v0

    goto :goto_0

    .line 2135
    :pswitch_7
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/h$b;->i()Lcom/google/i18n/phonenumbers/h$d;

    move-result-object v0

    goto :goto_0

    .line 2137
    :pswitch_8
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/h$b;->j()Lcom/google/i18n/phonenumbers/h$d;

    move-result-object v0

    goto :goto_0

    .line 2139
    :pswitch_9
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/h$b;->k()Lcom/google/i18n/phonenumbers/h$d;

    move-result-object v0

    goto :goto_0

    .line 2118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method a(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$a$a;
    .locals 2

    .prologue
    .line 2862
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 2863
    sget-object v0, Lcom/google/i18n/phonenumbers/i$a$a;->d:Lcom/google/i18n/phonenumbers/i$a$a;

    .line 2876
    :goto_0
    return-object v0

    .line 2866
    :cond_0
    sget-object v0, Lcom/google/i18n/phonenumbers/g;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2867
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2868
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2870
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/g;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 2871
    sget-object v0, Lcom/google/i18n/phonenumbers/i$a$a;->a:Lcom/google/i18n/phonenumbers/i$a$a;

    goto :goto_0

    .line 2874
    :cond_1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/g;->E:Lcom/google/i18n/phonenumbers/a/c;

    invoke-virtual {v0, p2}, Lcom/google/i18n/phonenumbers/a/c;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2875
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/g;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 2876
    invoke-direct {p0, v0, p1}, Lcom/google/i18n/phonenumbers/g;->a(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/i18n/phonenumbers/i$a$a;->b:Lcom/google/i18n/phonenumbers/i$a$a;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/i18n/phonenumbers/i$a$a;->d:Lcom/google/i18n/phonenumbers/i$a$a;

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$a;
    .locals 1

    .prologue
    .line 3020
    new-instance v0, Lcom/google/i18n/phonenumbers/i$a;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/i$a;-><init>()V

    .line 3021
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/i18n/phonenumbers/g;->a(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/i18n/phonenumbers/i$a;)V

    .line 3022
    return-object v0
.end method

.method public a(Lcom/google/i18n/phonenumbers/i$a;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1811
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/i$a;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/i$a;->h()I

    move-result v1

    if-lez v1, :cond_0

    .line 1812
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/i$a;->h()I

    move-result v1

    new-array v1, v1, [C

    .line 1813
    const/16 v2, 0x30

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 1814
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1816
    :cond_0
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/i$a;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1817
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/i18n/phonenumbers/i$a;Lcom/google/i18n/phonenumbers/g$a;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1179
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/i$a;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/i$a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/i$a;->j()Ljava/lang/String;

    move-result-object v0

    .line 1186
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1192
    :goto_0
    return-object v0

    .line 1190
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1191
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/i18n/phonenumbers/g;->a(Lcom/google/i18n/phonenumbers/i$a;Lcom/google/i18n/phonenumbers/g$a;Ljava/lang/StringBuilder;)V

    .line 1192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/google/i18n/phonenumbers/i$a;Lcom/google/i18n/phonenumbers/g$a;Ljava/lang/StringBuilder;)V
    .locals 3

    .prologue
    .line 1202
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1203
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/i$a;->a()I

    move-result v0

    .line 1204
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/g;->a(Lcom/google/i18n/phonenumbers/i$a;)Ljava/lang/String;

    move-result-object v1

    .line 1206
    sget-object v2, Lcom/google/i18n/phonenumbers/g$a;->a:Lcom/google/i18n/phonenumbers/g$a;

    if-ne p2, v2, :cond_0

    .line 1209
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    sget-object v1, Lcom/google/i18n/phonenumbers/g$a;->a:Lcom/google/i18n/phonenumbers/g$a;

    invoke-direct {p0, v0, v1, p3}, Lcom/google/i18n/phonenumbers/g;->a(ILcom/google/i18n/phonenumbers/g$a;Ljava/lang/StringBuilder;)V

    .line 1229
    :goto_0
    return-void

    .line 1214
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/g;->c(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1215
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1221
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/g;->b(I)Ljava/lang/String;

    move-result-object v2

    .line 1225
    invoke-direct {p0, v0, v2}, Lcom/google/i18n/phonenumbers/g;->a(ILjava/lang/String;)Lcom/google/i18n/phonenumbers/h$b;

    move-result-object v2

    .line 1226
    invoke-direct {p0, v1, v2, p2}, Lcom/google/i18n/phonenumbers/g;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/h$b;Lcom/google/i18n/phonenumbers/g$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/google/i18n/phonenumbers/g;->a(Lcom/google/i18n/phonenumbers/i$a;Lcom/google/i18n/phonenumbers/h$b;Lcom/google/i18n/phonenumbers/g$a;Ljava/lang/StringBuilder;)V

    .line 1228
    invoke-direct {p0, v0, p2, p3}, Lcom/google/i18n/phonenumbers/g;->a(ILcom/google/i18n/phonenumbers/g$a;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/i18n/phonenumbers/i$a;)V
    .locals 6

    .prologue
    .line 3031
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/i18n/phonenumbers/g;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/google/i18n/phonenumbers/i$a;)V

    .line 3032
    return-void
.end method

.method a(Ljava/lang/StringBuilder;Lcom/google/i18n/phonenumbers/h$b;Ljava/lang/StringBuilder;)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2893
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 2894
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/h$b;->p()Ljava/lang/String;

    move-result-object v3

    .line 2895
    if-eqz v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 2939
    :cond_0
    :goto_0
    return v0

    .line 2900
    :cond_1
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/g;->E:Lcom/google/i18n/phonenumbers/a/c;

    invoke-virtual {v4, v3}, Lcom/google/i18n/phonenumbers/a/c;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 2901
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2902
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/h$b;->a()Lcom/google/i18n/phonenumbers/h$d;

    move-result-object v4

    .line 2904
    iget-object v5, p0, Lcom/google/i18n/phonenumbers/g;->C:Lcom/google/i18n/phonenumbers/a/a;

    invoke-interface {v5, p1, v4, v0}, Lcom/google/i18n/phonenumbers/a/a;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/h$d;Z)Z

    move-result v5

    .line 2908
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v6

    .line 2909
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/h$b;->q()Ljava/lang/String;

    move-result-object v7

    .line 2910
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    .line 2911
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    .line 2913
    :cond_2
    if-eqz v5, :cond_3

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/g;->C:Lcom/google/i18n/phonenumbers/a/a;

    .line 2915
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2914
    invoke-interface {v2, v5, v4, v0}, Lcom/google/i18n/phonenumbers/a/a;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/h$d;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2918
    :cond_3
    if-eqz p3, :cond_4

    if-lez v6, :cond_4

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2919
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2921
    :cond_4
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v0, v1

    .line 2922
    goto :goto_0

    .line 2926
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2927
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v0, v2, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2928
    if-eqz v5, :cond_6

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/g;->C:Lcom/google/i18n/phonenumbers/a/a;

    .line 2929
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4, v0}, Lcom/google/i18n/phonenumbers/a/a;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/h$d;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2932
    :cond_6
    if-eqz p3, :cond_7

    if-le v6, v1, :cond_7

    .line 2933
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2935
    :cond_7
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 2936
    goto/16 :goto_0
.end method

.method public b(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2336
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/g;->B:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2337
    if-nez v0, :cond_0

    const-string/jumbo v0, "ZZ"

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method b(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 2951
    sget-object v0, Lcom/google/i18n/phonenumbers/g;->v:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2954
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/i18n/phonenumbers/g;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2956
    const/4 v0, 0x1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    :goto_0
    if-gt v0, v2, :cond_1

    .line 2957
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2960
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 2961
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2966
    :goto_1
    return-object v0

    .line 2956
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2966
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method
